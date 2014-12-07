.class Lcom/android/keyguard/KeyguardViewMediator$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    const-string v7, "com.sec.keyguard.DELAYED_FINGER_PRINT_PASSWORD_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "seq"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received DELAYED_FINGER_PRINT_PASSWORD_ACTION (mDelayedShowingFingerPrintPasswordSequence = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/keyguard/KeyguardHostView;->mDelayedShowingFingerPrintPasswordSequence:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , Sequence = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Lcom/android/keyguard/KeyguardHostView;->mDelayedShowingFingerPrintPasswordSequence:I

    if-ne v6, v5, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v7

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    const-string v7, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v6, "seq"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDelayedShowingSequence = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v6

    if-ne v6, v5, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$1102(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    sget-boolean v6, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$1102(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$1102(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)V

    :cond_4
    :goto_1
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_7
    const-string v7, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v6, "KeyguardViewMediator"

    const-string v7, "FMM_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)V

    :goto_2
    const-string v6, "KeyguardViewMediator"

    const-string v7, "wakeUp device!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_9
    const-string v7, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock FMM unlockscreen!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    :goto_3
    const-string v6, "KeyguardViewMediator"

    const-string v7, "wakeUp device!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_b
    const-string v7, "com.sec.android.Keyguard.SIDE_TOUCH_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock SIDE_UNLOCK unlockscreen!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_c
    const-string v7, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v6, "KeyguardViewMediator"

    const-string v7, "CARRIER_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    const-string v7, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock FLP!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_f
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_10
    const-string v7, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v6, "KeyguardViewMediator"

    const-string v7, "CARRIER_FLPP_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_11
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_12
    const-string v7, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "KeyguardViewMediator"

    const-string v8, "CARRIER_FLPP_UNLOCKED_ACTION intent is received."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSKTPassword(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_13
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_14
    const-string v7, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "KeyguardViewMediator"

    const-string v8, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_15
    const-string v7, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_16
    const-string v7, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :cond_17
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v7, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_19

    if-eqz v1, :cond_19

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$3102(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const-string v7, "android.bluetooth.device.extra.LINKTYPE"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_18
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_ACL_DISCONNECTED : mWearabledevice =/= device !!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_ACL_DISCONNECTED : mWearabledevice or device is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    const-string v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v6, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3102(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    :cond_1b
    const-string v7, "com.samsung.pen.INSERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const-string v7, "penInsert"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " penInsert = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1c
    move v2, v6

    :cond_1d
    if-nez v2, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_0

    :cond_1e
    const-string v6, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "KeyguardViewMediator"

    const-string v7, "EmergencyMode intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_1f
    const-string v6, "KeyguardViewMediator"

    const-string v7, "wakeUp device!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :cond_20
    const-string v6, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_21
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    goto/16 :goto_0
.end method
