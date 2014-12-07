.class public abstract Lcom/google/android/finsky/activities/AuthenticatedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;


# static fields
.field private static final ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

.field private static sCheckedVersionChanges:Z


# instance fields
.field private final mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mJustReturnedFromDialog:Z

.field private final mNetworkChangeReceiver:Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;

.field private final mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnResumeRunnable:Ljava/lang/Runnable;

.field mStateSaved:Z

.field private mWaitingForUserInput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

    sput-boolean v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sCheckedVersionChanges:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;

    invoke-direct {v0}, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mNetworkChangeReceiver:Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$11;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$11;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$12;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restrictLimitedOrEduUserAndContinue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->fireOnReadyRunnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    return p1
.end method

.method private addAccount()V
    .locals 8

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v6, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    move-object v5, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private checkTosAcceptanceAndContinue(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->displayTos()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->waitForLibrariesAndContinue(Z)V

    :cond_0
    return-void
.end method

.method private clearActiveStateRunnable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnResumeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;
    .locals 3

    array-length v2, p0

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "introMessage"

    const v3, 0x7f090128

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "allowSkip"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private determineAccount()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "authAccount"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v5, "This app was called with an intent that specified the account %s, which is not a valid account on this device"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method private displayTos()Z
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/finsky/activities/TosActivity;->requiresAcceptance(Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/google/android/finsky/activities/TosActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v3, 0x14

    invoke-virtual {p0, v1, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fireOnReadyRunnable(Z)V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/receivers/Installer;->startDeferredInstalls()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hideLoadingIndicator()V

    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private hasDiffVersionCode()Z
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v0

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAccountSwitchNeeded(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPlusProfileAndContinue(Z)V
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->useDefaultProfileInDrawer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$8;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$9;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$9;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getPlusProfile(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->checkTosAcceptanceAndContinue(Z)V

    return-void
.end method

.method private loadTocAndContinue(Z)V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[ZZ)V

    invoke-static {v1, v3, v2}, Lcom/google/android/finsky/utils/GetTocHelper;->getToc(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    return-void
.end method

.method private restrictLimitedOrEduUserAndContinue(Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->isLimitedOrEduUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->showLimitedUserUI(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadPlusProfileAndContinue(Z)V

    goto :goto_0
.end method

.method private setupAccountAndContinue(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;->ADD_ACCOUNT_SUPPORTS_CUSTOM_MESSAGE:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isAccountSwitchNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchAccount(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startLoadingLibrariesAndContinue(Z)V

    goto :goto_0
.end method

.method private setupAccountCreationDialog()Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090118

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnClickCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090119

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mDeclineCreateAccountListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private setupAccountDialog()Landroid/app/AlertDialog;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->convertToStringArray([Landroid/accounts/Account;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIndexOfAccount([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090123

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$5;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[Landroid/accounts/Account;)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private startLoadingLibrariesAndContinue(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadTocAndContinue(Z)V

    return-void
.end method

.method private waitForLibrariesAndContinue(Z)V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$10;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected authenticateOnNewIntent(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    return-void
.end method

.method public chooseAccount()V
    .locals 9

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "com.google"

    aput-object v4, v2, v5

    const-string v5, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    move-object v4, v1

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    const/16 v2, 0x17

    invoke-virtual {p0, v8, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/16 v5, 0x136

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected getJustReturnedFromDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    return v0
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method

.method protected handleUserAuthentication(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected hideLoadingIndicator()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f080047

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isStateSaved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    return v0
.end method

.method public isTosAccepted()Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/TosActivity;->requiresAcceptance(Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "b/5160617: Switch account to %s on resume"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->switchToAccount(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->chooseAccount()V

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_0

    :pswitch_3
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_3

    const-string v2, "No new account added: Assume the user canceled and finish."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackgroundDataNotEnabled()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    return-void
.end method

.method protected onCleanup()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v2, "waiting_for_user_input"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_used_account"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showLoadingIndicator()V

    sget-boolean v2, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sCheckedVersionChanges:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hasDiffVersionCode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/finsky/utils/VendingUtils;->wasSystemUpgraded()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Diff version or system, clear cache"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->invalidateToken()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    :goto_1
    sput-boolean v5, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sCheckedVersionChanges:Z

    return-void

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "Same version & system as before"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    if-nez v2, :cond_6

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    goto :goto_1

    :cond_6
    const-string v2, "Waiting for user to return from auth screen."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountCreationDialog()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->authenticateOnNewIntent(Z)V

    return-void
.end method

.method protected onNewIntentDirect(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract onReady(Z)V
.end method

.method protected onResumeFragments()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnResumeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getJustReturnedFromDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setJustReturnedFromDialog(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    :cond_1
    invoke-static {p0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showBackgroundDataDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->dismissExisting(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    const-string v0, "waiting_for_user_input"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mWaitingForUserInput:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "last_used_account"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->determineAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->flushCachedState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mNetworkChangeReceiver:Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mNetworkChangeReceiver:Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->flushCachedState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    return-void
.end method

.method protected reinitialize(Landroid/accounts/Account;Landroid/content/Intent;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->clearActiveStateRunnable()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->restart()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCleanup()V

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    :goto_1
    if-eqz p3, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/FinskyApp;->switchCurrentAccount(Landroid/accounts/Account;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->startInitializationActions(Z)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected restart()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->clearActiveStateRunnable()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->recreate()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$15;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Landroid/content/Intent;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public restartOnResume()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$14;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->runOrScheduleActiveStateRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected runOrScheduleActiveStateRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mStateSaved:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mOnResumeRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method protected setJustReturnedFromDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity;->mJustReturnedFromDialog:Z

    return-void
.end method

.method protected showBackgroundDataDialog()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->show(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;)V

    return-void
.end method

.method protected showLoadingIndicator()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f080047

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startInitializationActions(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->showLoadingIndicator()V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountAndContinue(Z)V

    return-void
.end method

.method protected switchAccount(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x196

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSettingsBackgroundEvent(IILjava/lang/Integer;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error, could not switch to %s because the account could not be found on the device"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->reinitialize(Landroid/accounts/Account;Landroid/content/Intent;Z)V

    return-void
.end method

.method public switchToAccount(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$2;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->runOrScheduleActiveStateRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
