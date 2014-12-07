.class public Lcom/google/android/finsky/layout/DetailsPlusOne;
.super Lcom/google/android/finsky/layout/AccessibleLinearLayout;
.source "DetailsPlusOne.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsPlusOne$3;,
        Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;,
        Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;,
        Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/layout/AccessibleLinearLayout;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

.field private static final sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private final mAvatarContainerReferenceWidth:I

.field private final mAvatarContainerRestrictWidth:Z

.field private mAvatarContainerView:Landroid/view/ViewGroup;

.field private final mAvatarMargin:I

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field private mCirclesPeopleCount:J

.field private mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mFirstFriendName:Ljava/lang/String;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mHasPlusOneData:Z

.field private mIsDetached:Z

.field private mIsWaitingServerResponse:Z

.field private mLegendView:Landroid/widget/TextView;

.field private mLoadingView:Landroid/widget/ProgressBar;

.field private mMainContainerView:Landroid/view/ViewGroup;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSetByUser:Z

.field private mTotal:J

.field private mUrl:Ljava/lang/String;

.field private mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

.field private mUserStatusIndicatorView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "@#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerReferenceWidth:I

    const v2, 0x7f0b0073

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarMargin:I

    sget-object v2, Lcom/android/vending/R$styleable;->DetailsPlusOne:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerRestrictWidth:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/DetailsPlusOne;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->handleMainContentClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/DetailsPlusOne;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/DetailsPlusOne;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    return-object v0
.end method

.method private bindPlusOneButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    :goto_0
    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncButtonState()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mMainContainerView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/android/finsky/layout/DetailsPlusOne$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$1;-><init>(Lcom/google/android/finsky/layout/DetailsPlusOne;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Off:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    goto :goto_0
.end method

.method private bindPlusOneCircleAvatars()V
    .locals 9

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v7, v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerView:Landroid/view/ViewGroup;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v0, v7

    const/4 v7, 0x5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerRestrictWidth:Z

    if-eqz v7, :cond_2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_2
    iget v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarMargin:I

    add-int/lit8 v8, v6, -0x1

    mul-int v5, v7, v8

    iget v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerReferenceWidth:I

    sub-int/2addr v7, v5

    div-int v2, v7, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_4

    new-instance v3, Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/finsky/utils/image/CircleCropTransformation;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/finsky/utils/image/CircleCropTransformation;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v7}, Lcom/google/android/finsky/layout/FifeImageView;->setBitmapTransformation(Lcom/google/android/finsky/utils/image/BitmapTransformation;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v4, :cond_3

    iget v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarMargin:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_3
    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v7, v7, v4

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v3, v7, v8}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerView:Landroid/view/ViewGroup;

    new-instance v8, Lcom/google/android/finsky/layout/DetailsPlusOne$2;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/layout/DetailsPlusOne$2;-><init>(Lcom/google/android/finsky/layout/DetailsPlusOne;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private bindPlusOneData(Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    iget-wide v4, p1, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    iput-wide v4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    iget-wide v4, p1, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v1, v1

    if-lez v1, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-wide v1, p1, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    iput-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:J

    iget-object v1, p1, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iput-wide v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:J

    iput-object v6, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclePersons:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    goto :goto_2
.end method

.method private bindPlusOneLegend()V
    .locals 13

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    sget-object v8, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Error:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    const v8, 0x7f0902ae

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    sget-object v8, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    if-ne v7, v8, :cond_1

    const/4 v6, 0x1

    :goto_1
    iget-wide v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    const v8, 0x7f0902af

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    iget-wide v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    const v8, 0x7f0902b0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mCirclesPeopleCount:J

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-nez v7, :cond_4

    iget-wide v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    const v9, 0x7f0902c1

    invoke-static {v0, v7, v8, v9}, Lcom/google/android/finsky/layout/DetailsPlusOne;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0006

    iget-wide v9, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    long-to-int v9, v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-wide/16 v7, 0x1

    cmp-long v7, v1, v7

    if-nez v7, :cond_5

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0902b1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-wide/16 v7, 0x1

    cmp-long v7, v1, v7

    if-nez v7, :cond_6

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0902b2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v7, 0x1

    sub-long/2addr v1, v7

    const v7, 0x7f0902c1

    invoke-static {v0, v1, v2, v7}, Lcom/google/android/finsky/layout/DetailsPlusOne;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0007

    long-to-int v9, v1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFirstFriendName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x447a0000

    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    long-to-float v0, p1

    const v1, 0x7f0902bf

    div-float/2addr v0, v5

    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    const v1, 0x7f0902c0

    div-float/2addr v0, v5

    :cond_1
    const/high16 v3, 0x41200000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    sget-object v3, Lcom/google/android/finsky/layout/DetailsPlusOne;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/android/finsky/layout/DetailsPlusOne;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleMainContentClick()V
    .locals 7

    const-wide/16 v5, 0x1

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0xd0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    :goto_0
    invoke-direct {p0, v4}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setLoading(Z)V

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    :goto_1
    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncButtonState()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    invoke-interface {v1, v2, v3, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->sendAccessibilityEventForUserStatus()V

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    iput-boolean v4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Off:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    goto :goto_1
.end method

.method private rebindViews()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneButton()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneLegend()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneCircleAvatars()V

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForUserStatus()V
    .locals 6

    const/4 v1, -0x1

    sget-object v2, Lcom/google/android/finsky/layout/DetailsPlusOne$3;->$SwitchMap$com$google$android$finsky$layout$DetailsPlusOne$PlusOneButtonState:[I

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "enum %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f0902b9

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0902ba

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0902bb

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setLoading(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLoadingView:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private syncButtonState()V
    .locals 6

    const v1, 0x7f0200d8

    sget-object v2, Lcom/google/android/finsky/layout/DetailsPlusOne$3;->$SwitchMap$com$google$android$finsky$layout$DetailsPlusOne$PlusOneButtonState:[I

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "enum %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    if-eqz v2, :cond_0

    :goto_1
    const v0, 0x7f0902b6

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserStatusIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserStatusIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0200db

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsWaitingServerResponse:Z

    if-eqz v2, :cond_1

    :goto_3
    const v0, 0x7f0902b7

    goto :goto_2

    :cond_1
    const v1, 0x7f0200da

    goto :goto_3

    :pswitch_2
    const v1, 0x7f0200d9

    const v0, 0x7f0902b8

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/api/model/Document;ZZLandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iput-object p5, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p9, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez p7, :cond_0

    if-eqz p6, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->hasPlusOneData()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setVisibility(I)V

    const-string v2, "DetailsPlusOne.hasPlusOneData"

    invoke-virtual {p8, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DetailsPlusOne.hasPlusOneData"

    invoke-virtual {p8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "DetailsPlusOne.plusOneData"

    invoke-virtual {p8, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    invoke-static {v2}, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->access$000(Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1, p8}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneData(Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->rebindViews()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getPlusOneData()Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    move-result-object v1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsDetached:Z

    invoke-super {p0}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsDetached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setLoading(Z)V

    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Error:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserState:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->syncButtonState()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneLegend()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneCircleAvatars()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->sendAccessibilityEventForUserStatus()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;->onFinishInflate()V

    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mMainContainerView:Landroid/view/ViewGroup;

    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUserStatusIndicatorView:Landroid/widget/ImageView;

    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLoadingView:Landroid/widget/ProgressBar;

    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mLegendView:Landroid/widget/TextView;

    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mAvatarContainerView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mIsDetached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->setLoading(Z)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->rebindViews()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mSetByUser:Z

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasSetByUser:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iget-wide v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mTotal:J

    iput-wide v1, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasTotal:Z

    invoke-static {}, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->setMyPeoplePageDirty()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->onResponse(Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;)V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "DetailsPlusOne.hasPlusOneData"

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mHasPlusOneData:Z

    if-eqz v0, :cond_0

    const-string v0, "DetailsPlusOne.plusOneData"

    new-instance v1, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-direct {v1, v2}, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;-><init>(Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
