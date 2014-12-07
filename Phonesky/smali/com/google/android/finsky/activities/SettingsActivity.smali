.class public Lcom/google/android/finsky/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method private configureAboutSection(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1    # Landroid/preference/PreferenceScreen;

    const-string v3, "build-version"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09028e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;

    const-string v2, "auto-add-shortcuts"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const v2, 0x7f0902a6

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    if-eqz v1, :cond_2

    const v2, 0x7f0902a7

    :goto_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v2, 0x7f0902a4

    goto :goto_1

    :cond_2
    const v2, 0x7f0902a5

    goto :goto_2
.end method

.method private configureAutoUpdateMode(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->hasMobileNetwork()Z

    move-result v2

    const-string v3, "auto-update-mode"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;

    if-eqz v2, :cond_0

    const/high16 v0, 0x7f0f0000

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setListId(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getAutoUpdateModeIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setDefaultValueIndex(I)V

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f0f0001

    goto :goto_0
.end method

.method private configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1    # Landroid/preference/PreferenceScreen;

    const-string v1, "update-notifications"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private configureUserControlsSection(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1    # Landroid/preference/PreferenceScreen;

    sget-object v4, Lcom/google/android/finsky/config/G;->vendingHideContentRating:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "content-level"

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v4, "password-restrict"

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v5, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAutoUpdateModeIndex()I
    .locals 5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/installer/InstallPolicies;->hasMobileNetwork()Z

    move-result v1

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setContentFilterLevel(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/16 v2, -0x64

    const-string v1, "content-level-to-set"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v1, "Content filter authenticated but no level to set"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v3, 0x191

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v4, "settings-page"

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSettingsBackgroundEvent(IILjava/lang/Integer;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 3

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const v1, 0x7f09024c

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method private startAuthChallenge(ZILandroid/os/Bundle;)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # Landroid/os/Bundle;

    const/4 v6, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;-><init>()V

    const/4 v3, 0x2

    iput v3, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    iput-boolean v6, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType:Z

    const v3, 0x7f090247

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    sget-object v3, Lcom/google/android/finsky/config/G;->passwordHelpUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "%email%"

    iget-object v4, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090248

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/activities/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    new-instance v1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;-><init>()V

    iput-object v0, v1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-static {p0, v3, p1, v1, p3}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/finsky/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/16 v7, 0x1e

    if-ne p1, v7, :cond_2

    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    const-string v7, "ContentFilterActivity_selectedFilterLevel"

    const/16 v8, -0x64

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v7, -0x64

    if-ne v0, v7, :cond_0

    const-string v7, "Content filter returned code \'OK\' but no level to set"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v7, "content-level-to-set"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->contentPin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f090239

    const v8, 0x7f09023a

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;IILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x21

    invoke-virtual {p0, v7, v8}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const v7, 0x7f09023d

    const v8, 0x7f09023e

    invoke-static {p0, v7, v8, v1, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;IILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x1f

    invoke-virtual {p0, v7, v8}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    const/4 v7, -0x1

    if-ne p2, v7, :cond_4

    const-string v7, "PinEntryDialog-extra-params"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "PinEntryDialog-result-pin"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "Create PIN result OK but no PIN sent back."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const v7, 0x7f09023b

    const v8, 0x7f09023c

    invoke-static {p0, v7, v8, v3, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent(Landroid/content/Context;IILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x22

    invoke-virtual {p0, v7, v8}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const/16 v7, 0x22

    if-ne p1, v7, :cond_6

    const/4 v7, -0x1

    if-ne p2, v7, :cond_6

    const-string v7, "PinEntryDialog-result-pin"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Confirm PIN result OK but no PIN sent back."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->contentPin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const-string v7, "PinEntryDialog-extra-params"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->setContentFilterLevel(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x1f

    if-ne p1, v7, :cond_8

    const/4 v7, -0x1

    if-ne p2, v7, :cond_8

    const-string v7, "PinEntryDialog-extra-params"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "content-level-to-set"

    const/16 v8, -0x64

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v7, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v7

    if-ne v0, v7, :cond_7

    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->contentPin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    :cond_7
    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->setContentFilterLevel(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0x20

    if-ne p1, v7, :cond_c

    const/4 v7, -0x1

    if-ne p2, v7, :cond_c

    const-string v7, "GaiaAuthActivity_extraParams"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "opt-out"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v8, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v9, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v10, 0x190

    if-eqz v5, :cond_9

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-eqz v6, :cond_a

    const/4 v7, 0x0

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "settings-page"

    invoke-virtual {v9, v10, v8, v7, v11}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSettingsBackgroundEvent(IILjava/lang/Integer;Ljava/lang/String;)V

    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v8, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "password-restrict"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    if-nez v5, :cond_b

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v7, 0x1

    move v8, v7

    goto :goto_1

    :cond_a
    const/4 v7, 0x1

    goto :goto_2

    :cond_b
    const/4 v7, 0x0

    goto :goto_3

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->shouldUseSystemActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x7f040000

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_0
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "Exit SettingsActivity - no current account."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->setupActionBar()V

    if-nez p1, :cond_3

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v2, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const-string v10, "update-notifications"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v9, p2

    check-cast v9, Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    new-instance v10, Landroid/app/backup/BackupManager;

    invoke-direct {v10, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_1
    const/4 v10, 0x1

    return v10

    :cond_2
    const-string v10, "auto-add-shortcuts"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v10, "clear-history"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v10

    invoke-virtual {v10}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    goto :goto_0

    :cond_4
    const-string v10, "content-level"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-class v10, Lcom/google/android/finsky/activities/ContentFilterActivity;

    const-string v11, "authAccount"

    iget-object v12, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-static {p0, v10, v11, v12}, Lcom/google/android/finsky/utils/IntentUtils;->createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/16 v10, 0x1e

    invoke-virtual {p0, v5, v10}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    const-string v10, "password-restrict"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v1, p2

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v7, 0x1

    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v10, "opt-out"

    invoke-virtual {v3, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v10, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v11, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v10, 0x20

    invoke-direct {p0, v7, v10, v3}, Lcom/google/android/finsky/activities/SettingsActivity;->startAuthChallenge(ZILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    const-string v10, "os-licenses"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x7f090244

    const-string v11, "file:///android_asset/licenses.html"

    invoke-static {p0, v10, v11}, Lcom/google/android/finsky/activities/WebViewDialog;->getIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUpdateNotifications(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoUpdateMode(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAutoAddShortcuts(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureUserControlsSection(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->configureAboutSection(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;

    const-string v6, "auto-update-mode"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v6, "auto-update-mode"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v6, "Unexpected list pref value %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/google/android/finsky/activities/SettingsActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v7, 0x192

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SettingsActivity;->getAutoUpdateModeIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v3, v8, v9}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSettingsBackgroundEvent(IILjava/lang/Integer;Ljava/lang/String;)V

    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    new-instance v6, Landroid/app/backup/BackupManager;

    invoke-direct {v6, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
