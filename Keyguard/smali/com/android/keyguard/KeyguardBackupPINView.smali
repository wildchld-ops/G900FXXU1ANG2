.class public Lcom/android/keyguard/KeyguardBackupPINView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mDummyEmergencyButton:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mOk:Landroid/widget/Button;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardBackupPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mShowImeAtScreenOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardBackupPINView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardBackupPINView;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardBackupPINView;)Lcom/android/keyguard/EmergencyButton;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardBackupPINView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardBackupPINView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardBackupPINView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mDummyEmergencyButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardBackupPINView;)Lcom/android/keyguard/sec/EmergencyCircleView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardBackupPINView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0b0026

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f0600da

    return v0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mOk:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mOk:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardBackupPINView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardBackupPINView$2;-><init>(Lcom/android/keyguard/KeyguardBackupPINView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardBackupPINView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardBackupPINView$3;-><init>(Lcom/android/keyguard/KeyguardBackupPINView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mDummyEmergencyButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mDummyEmergencyButton:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/sec/EmergencyCircleView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->updateBackgroundResourceWithRetainedPadding(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    new-instance v1, Lcom/android/keyguard/KeyguardBackupPINView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardBackupPINView$4;-><init>(Lcom/android/keyguard/KeyguardBackupPINView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mRootLayout:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onResume(I)V
    .locals 5
    .param p1    # I

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v0, p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardBackupPINView$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardBackupPINView$1;-><init>(Lcom/android/keyguard/KeyguardBackupPINView;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected resetState()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method
