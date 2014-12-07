.class Lcom/google/android/finsky/adapters/CardListAdapter$4;
.super Ljava/lang/Object;
.source "CardListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CardListAdapter;->bindSpinnerData(Lcom/google/android/finsky/layout/play/Identifiable;Landroid/widget/Spinner;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

.field final synthetic val$containerViews:Ljava/util/List;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CardListAdapter;Landroid/widget/Spinner;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->val$spinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->val$containerViews:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Containers$ContainerView;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/google/android/finsky/protos/Containers$ContainerView;->selected:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const/16 v5, 0xf9

    iget-object v6, v2, Lcom/google/android/finsky/protos/Containers$ContainerView;->serverLogsCookie:[B

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v7, v7, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v3, v3, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->startNewImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->val$containerViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Containers$ContainerView;

    if-ne v0, v2, :cond_0

    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/google/android/finsky/protos/Containers$ContainerView;->selected:Z

    iput-boolean v4, v0, Lcom/google/android/finsky/protos/Containers$ContainerView;->hasSelected:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v3, v3, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v3, v3, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    iget-object v4, v2, Lcom/google/android/finsky/protos/Containers$ContainerView;->listUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/api/model/BucketedList;->clearDataAndReplaceInitialUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter$4;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v3, v3, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->startLoadItems()V

    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
