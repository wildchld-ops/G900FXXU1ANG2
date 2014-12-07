.class public Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.source "SuccessStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
        "<",
        "Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;-><init>()V

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mFinishRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x307

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;)Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onContinueButtonClicked()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mFinishRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/finsky/config/G;->lightPurchaseAutoDismissMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onStop()V

    return-void
.end method
