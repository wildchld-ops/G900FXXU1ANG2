.class Lcom/android/keyguard/KeyguardSimPukView$4;
.super Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->hide()V

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$400(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x10900dd

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const v6, 0x10203f8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x104091e

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$500(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iput-boolean v8, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v5, 0x7f0600a5

    invoke-interface {v4, v5, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v4, v7}, Lcom/android/keyguard/KeyguardSimPukView;->access$002(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # invokes: Lcom/android/keyguard/KeyguardSimPukView;->getSimPukRetry()I
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$200(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mRemainingCount:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView;->updateRetryCount()V

    goto :goto_0
.end method
