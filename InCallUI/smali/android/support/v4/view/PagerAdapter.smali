.class public abstract Landroid/support/v4/view/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field private mObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    const/4 v0, -0x1

    return v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1    # I

    const/high16 v0, 0x3f800000

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1    # Landroid/database/DataSetObserver;

    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
    .param p2    # Ljava/lang/ClassLoader;

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/View;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1    # Landroid/database/DataSetObserver;

    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
