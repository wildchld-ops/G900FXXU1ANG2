.class public Lcom/google/android/finsky/receivers/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->onBootCompleted()V

    invoke-static {p1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/receivers/BootCompletedReceiver$1;-><init>(Lcom/google/android/finsky/receivers/BootCompletedReceiver;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
