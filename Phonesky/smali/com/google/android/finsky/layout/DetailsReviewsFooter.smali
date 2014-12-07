.class public Lcom/google/android/finsky/layout/DetailsReviewsFooter;
.super Lcom/google/android/finsky/layout/SeparatorLinearLayout;
.source "DetailsReviewsFooter.java"


# instance fields
.field private final mAllReviewsArea:Landroid/graphics/Rect;

.field private mAllReviewsButton:Lcom/google/android/play/layout/PlayActionButton;

.field private final mOldAllReviewsArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mOldAllReviewsArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const v2, 0x7f090165

    new-instance v3, Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/google/android/finsky/layout/DetailsReviewsFooter$1;-><init>(Lcom/google/android/finsky/layout/DetailsReviewsFooter;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->onFinishInflate()V

    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsButton:Lcom/google/android/play/layout/PlayActionButton;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mOldAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mOldAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mOldAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mOldAllReviewsArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/TouchDelegate;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mOldAllReviewsArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->mAllReviewsArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
