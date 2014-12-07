.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;
.super Landroid/os/CountDownTimer;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1202(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1002(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7$1;->this$1:Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    const v2, 0x7f060099

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    return-void
.end method
