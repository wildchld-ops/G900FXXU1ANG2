.class public Lcom/google/android/finsky/receivers/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountsChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restoreNewAccountApps(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->RESTORED_ANDROID_ID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/google/android/finsky/utils/VendingPreferences;->getNewAccounts([Landroid/accounts/Account;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_0

    const-string v3, "Restoring apps for %d new accounts."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v3, v1, v6

    invoke-static {p1, v2, v3}, Lcom/google/android/finsky/services/RestoreService;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/VendingPreferences;->saveCurrentAccountList([Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateFirstTimeForAccounts:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/AccountsChangedReceiver;->restoreNewAccountApps(Landroid/content/Context;)V

    sget-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->IMMEDIATE_DELAY_MS:J

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/services/ContentSyncService$Facade;->scheduleSync()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;-><init>(Lcom/google/android/finsky/receivers/AccountsChangedReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    return-void
.end method
