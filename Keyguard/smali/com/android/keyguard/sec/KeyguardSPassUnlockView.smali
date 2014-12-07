.class public Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
    }
.end annotation


# static fields
.field public static mEnableFallback:Z


# instance fields
.field private mAccountButton:Landroid/widget/Button;

.field private mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

.field private mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/Button;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDummyEmergencyButton:Landroid/view/View;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyArrow:Landroid/widget/ImageView;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

.field private mIconContaniner:Landroid/view/View;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSpassEcaButton:Landroid/widget/LinearLayout;

.field private mStatusImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTotalFailedSPassAttempts:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/CarrierText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/MSimCarrierText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .locals 3

    const-string v0, "KeyguardSPassView"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f0600bf

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :cond_1
    return-void
.end method

.method private initializeSPassUnlockView()V
    .locals 4

    const-string v0, "KeyguardSPassView"

    const-string v1, "initializeSPassUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SPassAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SPassUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SPassUnlock;->initializeViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    const-string v4, "KeyguardSPassView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    const-string v4, "KeyguardSPassView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const-string v4, "KeyguardSPassView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->start()V

    return-void
.end method

.method private maybeStartBiometricUnlock()V
    .locals 7

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "KeyguardSPassView"

    const-string v6, "maybeStartBiometricUnlock()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_0
.end method

.method private setEmergencyArrowPosition()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSpassEcaButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setEmergencyCirclePosition()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "KeyguardSPassView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassUnlock;->registerCallback(Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "KeyguardSPassView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->cleanUp()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SPassUnlock;->unregisterCallback()V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    const/4 v6, -0x1

    const/16 v5, 0x8

    const-string v3, "KeyguardSPassView"

    const-string v4, "onFinishInflate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_8

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->initializeSPassUnlockView()V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeEnableFallback(Landroid/content/Context;)V

    new-instance v3, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f0b00d6

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    const v3, 0x7f0b002d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v3, 0x7f0b0028

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    const v3, 0x7f0b00d8

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSpassEcaButton:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00bb

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mIconContaniner:Landroid/view/View;

    const v3, 0x7f0b001a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f0b00da

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const v3, 0x7f0b00d7

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/keyguard/sec/EmergencyCircleView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v3, v4, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_1
    const v3, 0x7f0b00be

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v3, 0x7f0b0045

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/CarrierText;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0b0043

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f0b00f2

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/MSimCarrierText;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const v3, 0x7f0b00bf

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    :cond_7
    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardSPassView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 4

    const-string v2, "KeyguardSPassView"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    const-string v0, "KeyguardSPassView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(): hasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "KeyguardSPassView"

    const-string v4, "reset()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLRAFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setEmergencyArrowPosition()V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setEmergencyCirclePosition()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v4, " "

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v3, "KeyguardSPassView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed SPass Attempts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    invoke-interface {v3, v0, v1}, Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;->handleAttemptLockout(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SPassUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    invoke-static {v1, v2, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public updateSPassButtonArea()V
    .locals 2

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v0, "KeyguardSPassView"

    const-string v1, "account button is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
