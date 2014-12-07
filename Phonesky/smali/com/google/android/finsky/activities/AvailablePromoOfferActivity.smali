.class public Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;
.source "AvailablePromoOfferActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAvailablePromoOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

.field private mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResultAndFinish()V

    return-void
.end method

.method private createFakeInternalParameters()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "available_offer"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->createFakeOffer()Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private createFakeOffer()Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;-><init>()V

    new-instance v0, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;-><init>()V

    const v2, 0x7f09003d

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->headerText:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasHeaderText:Z

    const v2, 0x7f09003e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->introductoryTextHtml:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasIntroductoryTextHtml:Z

    iput-object v0, v1, Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;->addCreditCardOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    return-object v1
.end method

.method public static getIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;)Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "available_offer"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "internal_parameters"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private replaceUrlsWithHandlers(Ljava/lang/CharSequence;)V
    .locals 11

    const/4 v10, 0x0

    instance-of v8, p1, Landroid/text/Spannable;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v5, p1

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v10, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v5, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$3;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$3;-><init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V

    invoke-interface {v5, v8, v7, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setResultAndFinish()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x37a

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_1

    const-string v1, "redeemed_offer_message_html"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p3}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "internal_parameters"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.vending.billing.ADD_CREDIT_CARD"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "internal_parameters"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->createFakeInternalParameters()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v2, "internal_parameters"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "available_offer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "No available_offer passed."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    :cond_1
    const-string v2, "available_offer"

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    iput-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    const-string v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAccountName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    const-string v2, "No internal parameters passed."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    goto :goto_0
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResultAndFinish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 19

    invoke-super/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onResume()V

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;->addCreditCardOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;->addCreditCardOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    iget-object v13, v3, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->headerText:Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->introductoryTextHtml:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    iget-object v0, v3, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->descriptionHtml:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    iget-object v0, v3, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->image:Lcom/google/android/finsky/protos/Doc$Image;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    iget-object v10, v3, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->image:Lcom/google/android/finsky/protos/Doc$Image;

    :cond_0
    iget-object v0, v3, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->termsAndConditionsHtml:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->replaceUrlsWithHandlers(Ljava/lang/CharSequence;)V

    iget-object v9, v3, Lcom/google/android/finsky/protos/CheckPromoOffer$AddCreditCardPromoOffer;->noActionDescription:Ljava/lang/String;

    :goto_0
    const v16, 0x7f040016

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setContentView(I)V

    const v16, 0x7f080046

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x7f04001b

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v16, 0x7f080042

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v16, 0x7f080055

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    if-nez v10, :cond_3

    const v16, 0x7f080056

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    const v16, 0x7f080059

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v16, 0x7f08005c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090046

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v16, 0x7f08005a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    sget-object v16, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAccountName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_5

    const v16, 0x7f090045

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v16, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;-><init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v16, 0x7f08005e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;-><init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "on_initial_setup"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_1

    const/high16 v16, 0x770000

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/google/android/finsky/utils/Compat;->viewSetSystemUiVisibility(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    const/4 v9, 0x0

    const-string v16, "Unsupported offer."

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    const v16, 0x7f08005b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v16, 0x7f080058

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v16, 0x7f080057

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    const v16, 0x7f090044

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method public showUrlWebView(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v4, "policy_terms"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v4, 0x7f04001a

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setLayoutId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090213

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "url_key"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setViewConfiguration(Landroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v3

    const-string v4, "policy_terms"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
