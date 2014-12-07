.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$2200(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v7, v4}, Lcom/android/keyguard/KeyguardPatternView;->access$2302(Lcom/android/keyguard/KeyguardPatternView;I)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    const-wide/16 v8, 0x1b58

    invoke-interface {v7, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_2

    move v4, v6

    :cond_2
    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # operator++ for: Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$2308(Lcom/android/keyguard/KeyguardPatternView;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # operator++ for: Lcom/android/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$2408(Lcom/android/keyguard/KeyguardPatternView;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$1600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$2500(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardPatternView;->getFailedAttempts()I

    move-result v0

    if-eqz v4, :cond_4

    rem-int/lit8 v7, v0, 0x5

    if-nez v7, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardPatternView;->access$2200(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
    invoke-static {v6, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$2600(Lcom/android/keyguard/KeyguardPatternView;J)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->isTactileFeedbackEnabled()Z
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$2700(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$2800(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v7

    const v8, 0x7f060096

    invoke-interface {v7, v8, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardPatternView;->access$2100(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardPatternView;->access$2900(Lcom/android/keyguard/KeyguardPatternView;)V

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2100(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
