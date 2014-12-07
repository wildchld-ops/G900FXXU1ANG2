.class public Lcom/google/android/finsky/layout/DetailsMarginBox;
.super Lcom/google/android/finsky/layout/MarginBox;
.source "DetailsMarginBox.java"


# instance fields
.field private final mCardVisualBottomPadding:I

.field private mLeadingBanner:Landroid/view/View;

.field private mLeftColumn:Landroid/view/View;

.field private mLeftColumnItemDetails:Landroid/view/View;

.field private final mMaxBannerHeight:I

.field private final mMinBannerHeight:I

.field private mRightColumn:Landroid/view/View;

.field private mRightColumnContainer:Lcom/google/android/finsky/layout/DetailsRightColumn;

.field private mRightColumnHeader:Lcom/google/android/finsky/layout/DetailsRightColumnHeader;

.field private mRightColumnSummary:Landroid/view/View;

.field private mTopBanner:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxBannerHeight:I

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMinBannerHeight:I

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mCardVisualBottomPadding:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/finsky/layout/MarginBox;->onFinishInflate()V

    const v1, 0x7f0800b9

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    const v1, 0x7f0800c7

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    const v2, 0x7f0800ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mTopBanner:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    const v2, 0x7f0800be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnSummary:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnSummary:Landroid/view/View;

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnHeader:Lcom/google/android/finsky/layout/DetailsRightColumnHeader;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsRightColumn;

    iput-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnContainer:Lcom/google/android/finsky/layout/DetailsRightColumn;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->hideSeparator()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    sub-int v3, p4, p2

    sub-int v0, p5, p3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v7, v7, v2, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    add-int v6, v4, v1

    invoke-virtual {v5, v4, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    invoke-virtual {v5, v4, v7, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const v13, 0x3f147ae1

    int-to-float v14, v3

    mul-float/2addr v13, v14

    float-to-int v1, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMinBannerHeight:I

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxBannerHeight:I

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    const v13, 0x3eb851ec

    int-to-float v14, v1

    mul-float/2addr v13, v14

    float-to-int v10, v13

    sub-int v2, v1, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v6, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v13, 0x40000000

    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v13, v7, v0}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumnItemDetails:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v13, v6, v13

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v5, v13, v14

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mCardVisualBottomPadding:I

    add-int/2addr v13, v1

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v13, v7, v0}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxContentWidth:I

    if-le v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxContentWidth:I

    sub-int v13, v12, v13

    div-int/lit8 v8, v13, 0x2

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mTopBanner:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v13, 0x3f800000

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    const/high16 v14, 0x40000000

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v15, 0x40000000

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    sub-int v13, v12, v6

    sub-int v9, v13, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnSummary:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iput v10, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnContainer:Lcom/google/android/finsky/layout/DetailsRightColumn;

    invoke-virtual {v13, v2}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setBottomBannerHeight(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnHeader:Lcom/google/android/finsky/layout/DetailsRightColumnHeader;

    invoke-virtual {v13, v8}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->setRightMargin(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumnContainer:Lcom/google/android/finsky/layout/DetailsRightColumn;

    invoke-virtual {v13, v8}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setRightMargin(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    const/high16 v14, 0x40000000

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/google/android/finsky/layout/DetailsMarginBox;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
