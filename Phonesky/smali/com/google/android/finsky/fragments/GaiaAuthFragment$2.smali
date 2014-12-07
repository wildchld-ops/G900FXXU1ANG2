.class Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;
.super Ljava/lang/Object;
.source "GaiaAuthFragment.java"

# interfaces
.implements Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/GaiaAuthFragment;->verifyGaia(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->isResumed()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Not resumed, ignoring auth challenge failure."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->TWO_FACTOR:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->success()V
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$300(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->BAD_AUTHENTICATION:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    const v4, 0x7f090098

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure(I)V
    invoke-static {v3, v4}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$400(Lcom/google/android/finsky/fragments/GaiaAuthFragment;I)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->CAPTCHA:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-eq p2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$500(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # getter for: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$600(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "password"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2$1;-><init>(Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public onAuthSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Not resumed, ignoring auth challenge success."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->success()V
    invoke-static {v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$300(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    goto :goto_0
.end method
