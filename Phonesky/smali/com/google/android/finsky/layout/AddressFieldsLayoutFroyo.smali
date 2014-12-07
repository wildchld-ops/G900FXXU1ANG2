.class public Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;
.super Lcom/google/android/finsky/layout/AddressFieldsLayout;
.source "AddressFieldsLayoutFroyo.java"


# instance fields
.field private mLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/AddressFieldsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mLoading:Z

    return-void
.end method

.method private addViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setChildrenViewVisibility(I)V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hideUpperRightProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->addViews(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->setChildrenViewVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->setChildrenViewVisibility(I)V

    goto :goto_0
.end method

.method public setOnHeightOffsetChangedListener(Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;)V
    .locals 0

    return-void
.end method

.method public showFields()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->setChildrenViewVisibility(I)V

    return-void
.end method

.method public showProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->setChildrenViewVisibility(I)V

    return-void
.end method

.method public showUpperRightProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutFroyo;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
