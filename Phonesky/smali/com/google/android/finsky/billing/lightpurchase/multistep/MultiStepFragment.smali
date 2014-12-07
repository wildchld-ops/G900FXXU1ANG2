.class public abstract Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;
.super Landroid/support/v4/app/Fragment;
.source "MultiStepFragment.java"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private mButtonBarVisible:Z

.field protected mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

.field private mContinueButtonBar:Landroid/view/View;

.field protected mContinueButtonLabel:Landroid/widget/TextView;

.field protected mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mFragmentContainer:Landroid/view/View;

.field private mIsLoading:Z

.field protected mMainView:Landroid/view/View;

.field private mProgressBar:Landroid/view/View;

.field private final mProgressBarToFragmentTransition:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBarToFragmentTransition:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeOutProgressBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeInFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->syncContinueButton(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    return-object v0
.end method

.method private fadeInButtonBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButtonBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButtonBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private fadeInFragment()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeOutButtonBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButtonBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeOutView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private fadeOutProgressBar()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeOutView(Landroid/view/View;)V

    return-void
.end method

.method private fadeOutView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$4;-><init>(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private restoreUi()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->syncContinueButton(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    goto :goto_0
.end method

.method private slideFragmentOut()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$3;-><init>(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private syncContinueButton(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
            "<*>;)V"
        }
    .end annotation

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeInButtonBar()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/IconButtonGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->allowContinueButtonIcon()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/IconButtonGroup;->setAllowIcon(Z)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/IconButtonGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/IconButtonGroup;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/IconButtonGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public hideLoading()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    if-nez v0, :cond_0

    const-string v0, "Illegal state: hideLoading called without fragment."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeOutProgressBar()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->syncContinueButton(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    iput-boolean v3, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->logImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0
.end method

.method public logClick(ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public logImpression(I)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public logImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PurchaseFragment.account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-eqz p1, :cond_0

    const-string v0, "MultiStepFragment.isLoading"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MultiStepFragment.isLoading"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->restoreUi()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBarToFragmentTransition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mMainView:Landroid/view/View;

    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButtonBar:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButtonBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mMainView:Landroid/view/View;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/IconButtonGroup;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$2;-><init>(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/IconButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/IconButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mContinueButtonLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mMainView:Landroid/view/View;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBar:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mMainView:Landroid/view/View;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    return-void
.end method

.method public showLoading()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeOutButtonBar()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->slideFragmentOut()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    const/16 v0, 0xd5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->logImpression(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
            "<*>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mProgressBarToFragmentTransition:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const v1, 0x7f080151

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    iput-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mIsLoading:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    if-eqz v1, :cond_2

    const v1, 0x7f050008

    const v2, 0x7f050009

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->syncContinueButton(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    goto :goto_0
.end method
