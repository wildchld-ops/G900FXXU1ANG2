.class public Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewItemHeaderLayout.java"


# instance fields
.field private mDate:Landroid/widget/TextView;

.field private mEdited:Landroid/widget/TextView;

.field private mRating:Landroid/widget/RatingBar;

.field private mSource:Landroid/widget/TextView;

.field private mSourceSection:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    const v0, 0x7f08021d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    const v0, 0x7f08021e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v3

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v4, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v10}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v11}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v9, v3, v6, v10, v11}, Landroid/widget/RatingBar;->layout(IIII)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v9

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v7, v4, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v9, v3, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v1, v4, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v1

    invoke-virtual {v9, v3, v1, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    sub-int v2, v9, v10

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v9, v3, v2, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingRight()I

    move-result v10

    sub-int v3, v9, v10

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9, v12, v12}, Landroid/view/View;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v12}, Landroid/widget/TextView;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9, v12, v12}, Landroid/widget/RatingBar;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v9}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v9

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v6, v9, v10

    :cond_0
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_1

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9, v12, v12}, Landroid/widget/TextView;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    :cond_1
    add-int v9, v6, v7

    add-int/2addr v9, v1

    add-int v0, v9, v2

    if-eqz v8, :cond_2

    if-le v0, v3, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    sub-int v10, v3, v1

    sub-int/2addr v10, v6

    sub-int/2addr v10, v2

    const/high16 v11, 0x40000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v9, v10, v12}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v9, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSourceSection:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v11}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v4, v9}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/protos/DocumentV2$Review;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    iget-object v2, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->source:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    new-instance v7, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout$1;

    invoke-direct {v7, p0, v5}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout$1;-><init>(Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-boolean v6, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasStarRating:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v6, v9}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    iget v7, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/RatingBar;->setRating(F)V

    :goto_1
    iget-boolean v6, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    iget-wide v7, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v6, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyTimestampMsec:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    if-eqz v6, :cond_0

    iget-wide v3, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    iget-wide v0, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    cmp-long v6, v3, v0

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mEdited:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mSource:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v6, v10}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
