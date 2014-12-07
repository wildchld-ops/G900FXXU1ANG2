.class Lcom/google/android/finsky/activities/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->showErrorMessage(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "No account, restarting activity after network error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->restart()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, v2}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "b/5160617: Reinitialize account %s on retry button click"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5}, Lcom/google/android/finsky/activities/MainActivity;->reinitialize(Landroid/accounts/Account;Landroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # invokes: Lcom/google/android/finsky/activities/MainActivity;->hideErrorMessage()V
    invoke-static {v2}, Lcom/google/android/finsky/activities/MainActivity;->access$200(Lcom/google/android/finsky/activities/MainActivity;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$12;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->showLoadingIndicator()V

    goto :goto_0
.end method
