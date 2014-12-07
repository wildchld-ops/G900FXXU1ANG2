.class Lcom/google/android/finsky/adapters/SearchAdapter$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SearchAdapter;->bindSpinnerData(Lcom/google/android/finsky/layout/play/Identifiable;Landroid/widget/Spinner;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

.field final synthetic val$related:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SearchAdapter;[Lcom/google/android/finsky/protos/Search$RelatedSearch;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->val$related:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->val$spinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->val$related:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    aget-object v0, v1, p3

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, v1, Lcom/google/android/finsky/adapters/SearchAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, v1, Lcom/google/android/finsky/adapters/SearchAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SearchAdapter;->access$000(Lcom/google/android/finsky/adapters/SearchAdapter;)Lcom/google/android/finsky/api/model/DfeSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->searchUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/SearchAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v4, v4, Lcom/google/android/finsky/adapters/SearchAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
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
