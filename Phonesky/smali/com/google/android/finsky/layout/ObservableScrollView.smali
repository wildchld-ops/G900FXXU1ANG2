.class public Lcom/google/android/finsky/layout/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;
    }
.end annotation


# instance fields
.field private mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;->onScroll(II)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/ObservableScrollView;->mOnScrollListener:Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;

    return-void
.end method
