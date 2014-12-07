.class public Lcom/android/settings/safetycare/SafetyCareSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareSettings.java"


# instance fields
.field private EmerContact:Ljava/lang/String;

.field final REQUESTCODE_DISCLAIMER:I

.field private mAssistance:Landroid/preference/PreferenceScreen;

.field private mAssistantObserver:Landroid/database/ContentObserver;

.field private mCompleteHandler:Landroid/os/Handler;

.field private mDisaster:Landroid/preference/PreferenceScreen;

.field private mDisasterObserver:Landroid/database/ContentObserver;

.field private mEContact:Landroid/preference/PreferenceScreen;

.field private mEmerMode:Landroid/preference/PreferenceScreen;

.field private mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

.field private mIsNoSIM:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "com.sec.android.app.contacts.action.INTERACTION_EMERGENCY_MESSAGE"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->EmerContact:Ljava/lang/String;

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->REQUESTCODE_DISCLAIMER:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsNoSIM:Z

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$1;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mCompleteHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$2;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$3;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisasterObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareSettings;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareSettings;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->EmerContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareSettings;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareSettings;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->queryEmergencyContactSize(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareSettings;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkEmerContact()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/safetycare/SafetyCareSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$7;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static queryEmergencyContactSize(Landroid/content/Context;)I
    .locals 11
    .param p0    # Landroid/content/Context;

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ICE"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "emergency"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "defaultId"

    const-string v5, "3"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v10

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3

    :catchall_0
    move-exception v3

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3

    :cond_2
    if-eqz v6, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->checkEmerContact()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f0700ac

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v5, "lowpower_mode"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmerMode:Landroid/preference/PreferenceScreen;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.GeoLookout"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v5, "earthquake_alert"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v5, "emer_contact"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEContact:Landroid/preference/PreferenceScreen;

    const-string v5, "safety_emaergency_buzzer_jpn"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmerMode:Landroid/preference/PreferenceScreen;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.safetyassurance"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v5, "safety_assistance"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "safety_emaergency_buzzer_jpn"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "safety_emaergency_buzzer_jpn"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v5, "emer_contact_category"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "emer_contact_category"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v5, "situation"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, "situation"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->checkEmerContact()V

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "earthquake_alert"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "earthquake_alert"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "situation"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v5, "situation"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v5, "safety_assistance"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "safety_assistance"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    if-eqz v3, :cond_8

    if-ne v3, v8, :cond_5

    :cond_8
    iput-boolean v8, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsNoSIM:Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f091371

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ee

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:appid"

    const-string v3, "safety_assistance"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisasterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEContact:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->EmerContact:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from_safety_setting"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    const v6, 0x7f091905

    const v5, 0x7f091904

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "safetycare_earthquake"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsNoSIM:Z

    if-ne v4, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-ne v1, v2, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "safetycare_earthquake"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisasterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v2, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "send_emergency_message"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "block_emergency_message"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    move v0, v2

    :goto_3
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    const v7, 0x7f09191e

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(I)V

    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "block_emergency_message"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v2, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "emergency_buzzer"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    :goto_5
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

    if-ne v1, v2, :cond_b

    :goto_6
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(I)V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-ne v1, v2, :cond_9

    move v4, v5

    :goto_7
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    :cond_9
    move v4, v6

    goto :goto_7

    :cond_a
    move v1, v3

    goto :goto_5

    :cond_b
    move v5, v6

    goto :goto_6
.end method
