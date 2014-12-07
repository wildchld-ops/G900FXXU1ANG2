.class public Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PurchaseActivity.java"

# interfaces
.implements Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$Listener;
.implements Lcom/google/android/finsky/layout/play/RootUiElementNode;


# static fields
.field private static final DISABLE_DISMISS_ON_TOUCH_OUTSIDE:Z


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private final mHitRect:Landroid/graphics/Rect;

.field private mInitialServerLogsCookie:[B

.field protected mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->DISABLE_DISMISS_ON_TOUCH_OUTSIDE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mHitRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;[BLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PurchaseActivity.account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "PurchaseActivity.params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "PurchaseActivity.appDownloadSizeWarningArgs"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "PurchaseActivity.serverLogsCookie"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object v0
.end method

.method private dismissIfPossible(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getPurchaseFragment()Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->isDismissable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->onDialogDismissed()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const-string v1, "PurchaseFragment not dismissable by %s, ignore."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getPurchaseFragment()Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    return-object v0
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-boolean v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->DISABLE_DISMISS_ON_TOUCH_OUTSIDE:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x259

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x2

    const-string v1, "click outside"

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->dismissIfPossible(ILjava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getPurchaseFragment()Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->onFinish(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v2, 0x0

    const/16 v4, 0x25b

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "Purchase fragment null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public flushImpression()V
    .locals 2

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x2bc

    invoke-static {v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v3

    new-instance v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;-><init>()V

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v4, v4, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->document:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasDocument:Z

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget v4, v4, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->offerType:I

    iput v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->offerType:I

    iput-boolean v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasOfferType:Z

    iput-object v0, v3, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->clientLogsCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getPurchaseFragment()Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getServerLogsCookie()[B

    move-result-object v2

    :goto_0
    invoke-static {v3, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mInitialServerLogsCookie:[B

    goto :goto_0
.end method

.method protected handleAccessRestriction()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->setResult(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x1

    const-string v1, "back press"

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->dismissIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040087

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "PurchaseActivity.params"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    const-string v4, "PurchaseActivity.account"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-static {}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->isLimitedOrEduUser()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->showLimitedPurchaseUI(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->handleAccessRestriction()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "PurchaseActivity.serverLogsCookie"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mInitialServerLogsCookie:[B

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->mInitialServerLogsCookie:[B

    const-string v7, "PurchaseActivity.appDownloadSizeWarningArgs"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->newInstance(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;[BLandroid/os/Bundle;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    move-result-object v2

    const v4, 0x7f080046

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->setResult(I)V

    return-void
.end method

.method protected onFinish(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->hasSucceeded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->setResult(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->hasFailed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getError()Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;->errorType:I

    :goto_1
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;->errorSubtype:I

    :cond_2
    const-string v3, "Purchase failed: %d / %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->setResult(I)V

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public onFinished()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->finish()V

    return-void
.end method

.method public startNewImpression()V
    .locals 2

    const-string v0, "Not using impression id\'s."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
