.class public Lcom/google/android/finsky/layout/ReviewsControlContainer;
.super Landroid/widget/LinearLayout;
.source "ReviewsControlContainer.java"


# instance fields
.field private mFilterBox:Landroid/widget/TextView;

.field private mSortBox:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/api/model/DfeReviews;
    .param p2    # Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortBox:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->getDisplayString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortBox:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/layout/ReviewsControlContainer$1;-><init>(Lcom/google/android/finsky/layout/ReviewsControlContainer;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mFilterBox:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/finsky/layout/ReviewsControlContainer$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/layout/ReviewsControlContainer$2;-><init>(Lcom/google/android/finsky/layout/ReviewsControlContainer;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080227

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mSortBox:Landroid/widget/TextView;

    const v0, 0x7f080228

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewsControlContainer;->mFilterBox:Landroid/widget/TextView;

    return-void
.end method
