.class public abstract Lcom/google/android/finsky/adapters/FinskyListAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "FinskyListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field protected mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/BucketedList;->inErrorState()Z

    move-result v0

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    iput-object p3, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    return-void
.end method


# virtual methods
.method protected getLastRequestError()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    return-void
.end method

.method public abstract onDestroyView()V
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ListTab.ListParcelKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ListTab.ListParcelKey"

    invoke-virtual {p1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected retryLoadingItems()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->retryLoadItems()V

    return-void
.end method

.method public updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/adapters/FinskyListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->notifyDataSetChanged()V

    return-void
.end method
