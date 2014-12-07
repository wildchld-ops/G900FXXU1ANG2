.class public Lcom/google/android/finsky/receivers/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getNewUpdateClickedIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/receivers/NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.vending.NEW_UPDATE_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getNewUpdateNeedApprovalClicked()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/receivers/NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.vending.NEW_UPDATE_NEED_APPROVAL_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getOutstandingUpdateClickedIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/receivers/NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.vending.OUTSTANDING_UPDATE_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSuccessfullyInstalledClickedIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/receivers/NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.vending.SUCCESSFULLY_INSTALLED_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "continue_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSuccessfullyUpdatedClickedIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/receivers/NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.vending.SUCCESSFULLY_UPDATED_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSuccessfullyUpdatedDeletedIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/receivers/NotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.vending.SUCCESSFULLY_UPDATED_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private logNotificationClick(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private newUpdateClicked(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x384

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/NotificationReceiver;->logNotificationClick(I)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->startMyDownloadsWithUpdateAllPromptIntent(Landroid/content/Context;)V

    return-void
.end method

.method private newUpdateNeedApprovalClicked(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x388

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/NotificationReceiver;->logNotificationClick(I)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->startMyDownloadsWithUpdateAllPromptIntent(Landroid/content/Context;)V

    return-void
.end method

.method private outstandingUpdateClicked(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x387

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/NotificationReceiver;->logNotificationClick(I)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->startMyDownloadsWithUpdateAllPromptIntent(Landroid/content/Context;)V

    return-void
.end method

.method private startMyDownloadsWithUpdateAllPromptIntent(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v1

    const-string v2, "cl:update.show_update_all_prompt"

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private successfullyInstalledClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x385

    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->logNotificationClick(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/finsky/utils/IntentUtils;->createContinueUrlIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v2, v2, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private successfullyUpdatedClicked(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x386

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/NotificationReceiver;->logNotificationClick(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/NotificationReceiver;->successfullyUpdatedDeleted()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private successfullyUpdatedDeleted()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->successfulUpdateNotificationAppList:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.vending.NEW_UPDATE_CLICKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->newUpdateClicked(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.android.vending.SUCCESSFULLY_INSTALLED_CLICKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "package_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "continue_url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->successfullyInstalledClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "com.android.vending.SUCCESSFULLY_UPDATED_CLICKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->successfullyUpdatedClicked(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v3, "com.android.vending.SUCCESSFULLY_UPDATED_DELETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/NotificationReceiver;->successfullyUpdatedDeleted()V

    goto :goto_0

    :cond_4
    const-string v3, "com.android.vending.OUTSTANDING_UPDATE_CLICKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->outstandingUpdateClicked(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v3, "com.android.vending.NEW_UPDATE_NEED_APPROVAL_CLICKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/NotificationReceiver;->newUpdateNeedApprovalClicked(Landroid/content/Context;)V

    goto :goto_0
.end method
