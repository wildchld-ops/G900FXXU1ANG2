.class public Lcom/google/android/finsky/layout/AutoUpdateSection;
.super Lcom/google/android/finsky/layout/SeparatorLinearLayout;
.source "AutoUpdateSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/AutoUpdateSection;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;ZZLandroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/support/v4/app/FragmentManager;
    .param p1    # Lcom/google/android/finsky/appstate/AppStates;
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Z
    .param p5    # Landroid/content/Context;

    invoke-static/range {p0 .. p5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->updateAutoUpdateForThisApp(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;ZZLandroid/content/Context;)V

    return-void
.end method

.method public static handleAutoUpdateButtonClick(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .locals 7
    .param p0    # Landroid/support/v4/app/FragmentActivity;
    .param p1    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p2    # Z

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "tried to operate on a null doc"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string v0, "tried to operate on a non-apps doc."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/layout/AutoUpdateSection;->isAutoUpdateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    move v4, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->updateAutoUpdateForThisApp(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;ZZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public static isAutoUpdateEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAutoUpdateVisible(Ljava/lang/String;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)Z
    .locals 6
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/google/android/finsky/library/Libraries;
    .param p2    # Lcom/google/android/finsky/appstate/AppStates;
    .param p3    # Lcom/google/android/finsky/receivers/Installer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2, p0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v5, :cond_4

    move v2, v3

    :goto_1
    invoke-interface {p3, p0}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-boolean v5, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-nez v5, :cond_0

    :cond_3
    move v4, v3

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method private static updateAutoUpdateForThisApp(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;ZZLandroid/content/Context;)V
    .locals 9
    .param p0    # Landroid/support/v4/app/FragmentManager;
    .param p1    # Lcom/google/android/finsky/appstate/AppStates;
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Z
    .param p5    # Landroid/content/Context;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v5

    sget-object v6, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz p3, :cond_2

    sget-object v2, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v5

    invoke-interface {v5, p2, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    if-eqz p3, :cond_3

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v1, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;-><init>()V

    const-string v5, "auto_update_dialog"

    invoke-virtual {v1, p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    :goto_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v7

    const/16 v8, 0x193

    if-eqz p3, :cond_5

    const/4 v5, 0x1

    move v6, v5

    :goto_3
    if-eqz v3, :cond_6

    const/4 v5, 0x1

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v6, v5, p2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSettingsForPackageEvent(IILjava/lang/Integer;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_0

    if-eqz p3, :cond_4

    const v4, 0x7f0902f7

    :goto_5
    const/4 v5, 0x1

    invoke-static {p5, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    const v4, 0x7f0902f6

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    move v6, v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4
.end method


# virtual methods
.method public bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/support/v4/app/Fragment;
    .param p3    # Lcom/google/android/finsky/library/Libraries;
    .param p4    # Lcom/google/android/finsky/appstate/AppStates;
    .param p5    # Lcom/google/android/finsky/receivers/Installer;

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->removeAllViews()V

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0060

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f04000b

    invoke-virtual {v2, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v5, 0x7f080023

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    const v5, 0x7f080024

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {p1, p3, p4, p5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->isAutoUpdateVisible(Ljava/lang/String;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    if-nez v3, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/layout/AutoUpdateSection;->isAutoUpdateEnabled(Ljava/lang/String;)Z

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/google/android/finsky/layout/AutoUpdateSection$1;

    invoke-direct {v6, p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$1;-><init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/AutoUpdateSection;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v5, Lcom/google/android/finsky/layout/AutoUpdateSection$2;

    invoke-direct {v5, p0, v1, p4, p1}, Lcom/google/android/finsky/layout/AutoUpdateSection$2;-><init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
