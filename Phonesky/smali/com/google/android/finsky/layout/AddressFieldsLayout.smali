.class public abstract Lcom/google/android/finsky/layout/AddressFieldsLayout;
.super Landroid/widget/FrameLayout;
.source "AddressFieldsLayout.java"


# instance fields
.field protected mFieldContainer:Landroid/widget/LinearLayout;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mUpperRightProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public disableOneFieldMode()V
    .locals 0

    return-void
.end method

.method public abstract hideUpperRightProgressBar()V
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayout;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayout;->mFieldContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayout;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public abstract setFields(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnHeightOffsetChangedListener(Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;)V
.end method

.method public abstract showFields()V
.end method

.method public abstract showProgressBar()V
.end method

.method public abstract showUpperRightProgressBar()V
.end method
