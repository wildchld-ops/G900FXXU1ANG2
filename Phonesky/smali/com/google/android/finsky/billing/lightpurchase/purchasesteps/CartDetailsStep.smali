.class public Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.source "CartDetailsStep.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
        "<",
        "Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;"
    }
.end annotation


# static fields
.field private static final PATTERN_EM_TAG:Ljava/util/regex/Pattern;

.field private static final PATTERN_END_EM_TAG:Ljava/util/regex/Pattern;


# instance fields
.field private mBackend:I

.field private mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

.field private mContinueButtonConfirmsPurchase:Z

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mExpanded:Z

.field private mHeader:Landroid/view/View;

.field private mIsExpandable:Z

.field private mPaymentSettingsView:Landroid/widget/TextView;

.field private mPriceView:Landroid/widget/TextView;

.field private mPurchaseDetailsView:Landroid/view/View;

.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field private mUseBlueHighlight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<em>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->PATTERN_EM_TAG:Ljava/util/regex/Pattern;

    const-string v0, "</em>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->PATTERN_END_EM_TAG:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;-><init>()V

    const/16 v0, 0x2c6

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method public static newInstance(IZLcom/google/android/finsky/protos/Purchase$ClientCart;)Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;-><init>()V

    const-string v2, "CartDetailsStep.backend"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "CartDetailsStep.useBlueHighlight"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "CartDetailsStep.cart"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->setArguments(Landroid/os/Bundle;)V

    iput-object p2, v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    return-object v1
.end method

.method private static parseHtmlAndColorizeEm(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 5

    const-string v1, "#%06X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->PATTERN_EM_TAG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b><font color=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->PATTERN_END_EM_TAG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "</font></b>"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1
.end method

.method private populateContainerWithTextViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I[Ljava/lang/String;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {p1, p3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4, p5}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->parseHtmlAndColorizeEm(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v6, p4

    if-lez v6, :cond_1

    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v5, 0x8

    goto :goto_1
.end method

.method private toggleExpansion()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0x2cb

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->updateExpansion()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateExpansion()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    iget-boolean v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->expand(Z)V

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPurchaseDetailsView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mIsExpandable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mUseBlueHighlight:Z

    if-eqz v2, :cond_2

    move v0, v3

    :goto_1
    iget-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getMenuExpanderMaximized(I)I

    move-result v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPriceView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mBackend:I

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getMenuExpanderMinimized(I)I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public allowContinueButtonIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mContinueButtonConfirmsPurchase:Z

    return v0
.end method

.method public getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mHeader:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x2c9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->logClick(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->toggleExpansion()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPaymentSettingsView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x2ca

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->logClick(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->launchBillingProfile()V

    goto :goto_0
.end method

.method public onContinueButtonClicked()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mContinueButtonConfirmsPurchase:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2c7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->logClick(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->confirmPurchase()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x2c8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->logClick(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->launchBillingProfile()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CartDetailsStep.backend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mBackend:I

    const-string v1, "CartDetailsStep.useBlueHighlight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mUseBlueHighlight:Z

    const-string v1, "CartDetailsStep.cart"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    if-eqz p1, :cond_0

    const-string v1, "CartDetailsStep.expanded"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mBackend:I

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getSecondaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mUseBlueHighlight:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    :goto_0
    const v2, 0x7f04008a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    const v2, 0x7f080159

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    const v2, 0x7f08015b

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPriceView:Landroid/widget/TextView;

    const v2, 0x7f08015a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    const v2, 0x7f08015f

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v2, 0x7f080150

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080160

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPurchaseDetailsView:Landroid/view/View;

    const v2, 0x7f080163

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v2, 0x7f080161

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPaymentSettingsView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPaymentSettingsView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPaymentSettingsView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800cf

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPriceView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v3, v3, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mUseBlueHighlight:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPriceView:Landroid/widget/TextView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-boolean v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPriceByline:Z

    if-eqz v2, :cond_0

    const v2, 0x7f08015c

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->priceByline:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mUseBlueHighlight:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v0, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    array-length v2, v2

    if-lez v2, :cond_5

    const v2, 0x7f08015e

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v0, v2, Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;->disabledMessageHtml:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v2, 0x7f08015d

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v11, 0x7f04008b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v12, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->populateContainerWithTextViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I[Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-boolean v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFooterHtml:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->footerHtml:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->parseHtmlAndColorizeEm(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mIsExpandable:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mHeader:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->updateExpansion()V

    return-object v22

    :cond_2
    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mPriceView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    :cond_5
    const v2, 0x7f080162

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f04008c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v6, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->populateContainerWithTextViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I[Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mIsExpandable:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mContinueButtonConfirmsPurchase:Z

    goto/16 :goto_3

    :cond_6
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->addInstrumentPromptHtml:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->parseHtmlAndColorizeEm(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onResume()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900b8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v4, v4, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v4, v4, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mHeader:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CartDetailsStep.expanded"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->mExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
