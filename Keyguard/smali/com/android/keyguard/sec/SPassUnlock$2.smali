.class Lcom/android/keyguard/sec/SPassUnlock$2;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SPassUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SPassUnlock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(I)V
    .locals 10
    .param p1    # I

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v6, v6, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;->updateButtonArea()V

    :cond_1
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v4

    const-string v6, "SPassUnlock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "max failed attempt for device disable :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_2

    if-lt v3, v4, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SPassUnlock;->cleanUp()V

    :cond_2
    if-eqz v3, :cond_3

    rem-int/lit8 v6, v3, 0x5

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$300(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    move-result-object v6

    invoke-interface {v6, v0, v1}, Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;->handleAttemptLockout(J)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/keyguard/sec/SPassUnlock;->startIdleAnimation(Z)V
    invoke-static {v6, v9}, Lcom/android/keyguard/sec/SPassUnlock;->access$400(Lcom/android/keyguard/sec/SPassUnlock;Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # setter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z
    invoke-static {v6, v9}, Lcom/android/keyguard/sec/SPassUnlock;->access$502(Lcom/android/keyguard/sec/SPassUnlock;Z)Z

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$600(Lcom/android/keyguard/sec/SPassUnlock;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$700(Lcom/android/keyguard/sec/SPassUnlock;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/keyguard/sec/SPassUnlock;->startSucceedAnimation()V
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$800(Lcom/android/keyguard/sec/SPassUnlock;)V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # invokes: Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V
    invoke-static {v6}, Lcom/android/keyguard/sec/SPassUnlock;->access$900(Lcom/android/keyguard/sec/SPassUnlock;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
