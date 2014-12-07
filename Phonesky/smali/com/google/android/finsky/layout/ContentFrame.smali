.class public Lcom/google/android/finsky/layout/ContentFrame;
.super Landroid/widget/FrameLayout;
.source "ContentFrame.java"


# instance fields
.field private mDataLayout:Landroid/view/ViewGroup;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/ContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v4, Lcom/android/vending/R$styleable;->ContentFrame:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/google/android/finsky/layout/ContentFrame;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/google/android/finsky/layout/ContentFrame;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400ca

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/ContentFrame;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/ContentFrame;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400c9

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/ContentFrame;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/google/android/finsky/layout/ContentFrame;->setDataLayout(II)V

    return-void
.end method


# virtual methods
.method public getDataLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ContentFrame;->mDataLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setDataLayout(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/ContentFrame;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/finsky/layout/ContentFrame;->setDataLayout(Landroid/view/LayoutInflater;II)V

    return-void
.end method

.method public setDataLayout(Landroid/view/LayoutInflater;II)V
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # I
    .param p3    # I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ContentFrame;->mDataLayout:Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ContentFrame;->mDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setId(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/ContentFrame;->mDataLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ContentFrame;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
