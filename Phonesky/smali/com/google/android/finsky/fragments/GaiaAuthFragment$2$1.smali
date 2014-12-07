.class Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;
.super Ljava/lang/Object;
.source "GaiaAuthFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->isResumed()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Not resumed, ignoring account manager auth."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "booleanResult"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->success()V
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$300(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "OperationCanceledException: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$500(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v4}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "IOException: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$500(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$500(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "AuthenticatorException: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;->this$1:Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$500(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    goto :goto_0
.end method
