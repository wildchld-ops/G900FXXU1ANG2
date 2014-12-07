.class public Lcom/google/android/finsky/layout/SubscriptionView;
.super Landroid/widget/RelativeLayout;
.source "SubscriptionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;,
        Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    }
.end annotation


# instance fields
.field private mCancelButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

.field private mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

.field private mDescriptionCollapser:Landroid/view/View;

.field private mDescriptionExpander:Landroid/view/View;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mExpansionState:I

.field private final mHalfSeparatorThickness:I

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private mSubscriptionDescription:Landroid/widget/TextView;

.field private mSubscriptionPrice:Landroid/widget/TextView;

.field private mSubscriptionRenewal:Landroid/widget/TextView;

.field private mSubscriptionStatus:Landroid/widget/TextView;

.field private mSubscriptionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/SubscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mHalfSeparatorThickness:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    const v3, 0x7f070021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    invoke-direct {v2}, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SubscriptionView;)Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/SubscriptionView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SubscriptionView;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/SubscriptionView;

    iget v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/layout/SubscriptionView;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/SubscriptionView;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SubscriptionView;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/SubscriptionView;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->collapseDescription()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/SubscriptionView;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/SubscriptionView;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->expandDescription()V

    return-void
.end method

.method private collapseDescription()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private expandDescription()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static fillSubscriptionDateInfo(Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Landroid/content/res/Resources;)V
    .locals 8
    .param p0    # Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;
    .param p1    # Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .param p2    # Landroid/content/res/Resources;

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->getValidUntilTimestampMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(J)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget-wide v4, p1, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(J)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f090190

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    const v4, 0x7f090197

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    :goto_0
    iput-boolean v7, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->canCancel:Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->getValidUntilTimestampMs()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const v4, 0x7f090191

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    :goto_2
    const v4, 0x7f090196

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    const v4, 0x7f090192

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    const v4, 0x7f090198

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    iput-boolean v6, p0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->canCancel:Z

    goto :goto_1
.end method

.method public static getSubscriptionPriceDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p2    # Landroid/content/res/Resources;

    const/4 v7, 0x1

    iget-object v3, p1, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p1, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    iget-object v2, v0, Lcom/google/android/finsky/protos/Common$SubscriptionTerms;->recurringPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    const/4 v1, -0x1

    iget v3, v2, Lcom/google/android/finsky/protos/Common$TimePeriod;->unit:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    const v3, 0x7f09018b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    const v1, 0x7f09018c

    goto :goto_1

    :pswitch_1
    const v1, 0x7f09018d

    goto :goto_1

    :pswitch_2
    const v1, 0x7f09018e

    goto :goto_1

    :pswitch_3
    const v1, 0x7f09018f

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hideDescription()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .param p3    # Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionDetails()Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionDetails()Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    move-result-object v4

    iget v4, v4, Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const v0, 0x7f09018e

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const v5, 0x7f09018b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getSecondaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    invoke-static {v4, p2, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->fillSubscriptionDateInfo(Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Landroid/content/res/Resources;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget-object v4, v4, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget v5, v5, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->statusResourceId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget-boolean v4, v4, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->canCancel:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const v6, 0x7f090193

    new-instance v7, Lcom/google/android/finsky/layout/SubscriptionView$1;

    invoke-direct {v7, p0, p1, p5, p2}, Lcom/google/android/finsky/layout/SubscriptionView$1;-><init>(Lcom/google/android/finsky/layout/SubscriptionView;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayActionButton;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/SubscriptionView;->setNextFocusRightId(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/play/layout/PlayActionButton;->setNextFocusLeftId(I)V

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->hideDescription()V

    :goto_4
    return-void

    :cond_0
    const v0, 0x7f09018f

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Common$Offer;

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v4, v2, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->getSubscriptionPriceDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v4, "Document for %s does not contain subscription details or terms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v4, "Document for %s does not contain subscription details or offer."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    iget-object v5, v5, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Lcom/google/android/play/layout/PlayActionButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/SubscriptionView;->setNextFocusRightId(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    if-gez v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p4, v4, v5}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    :cond_7
    iget v4, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->expandDescription()V

    :goto_5
    new-instance v4, Lcom/google/android/finsky/layout/SubscriptionView$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/SubscriptionView$2;-><init>(Lcom/google/android/finsky/layout/SubscriptionView;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/SubscriptionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->collapseDescription()V

    goto :goto_5
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionView;->getHeight()I

    move-result v7

    iget v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mHalfSeparatorThickness:I

    sub-int v6, v7, v0

    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v8

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f080235

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionTitle:Landroid/widget/TextView;

    const v0, 0x7f080237

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionPrice:Landroid/widget/TextView;

    const v0, 0x7f080238

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionRenewal:Landroid/widget/TextView;

    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionStatus:Landroid/widget/TextView;

    const v0, 0x7f080239

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mCancelButton:Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f08023b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mSubscriptionDescription:Landroid/widget/TextView;

    const v0, 0x7f08023a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionExpander:Landroid/view/View;

    const v0, 0x7f08023c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDescriptionCollapser:Landroid/view/View;

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
