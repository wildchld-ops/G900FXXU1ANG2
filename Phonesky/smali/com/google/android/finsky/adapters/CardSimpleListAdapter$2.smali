.class Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;
.super Ljava/lang/Object;
.source "CardSimpleListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CardSimpleListAdapter;

.field final synthetic val$bucket:Lcom/google/android/finsky/api/model/Bucket;

.field final synthetic val$elementNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CardSimpleListAdapter;Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/CardSimpleListAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->val$elementNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/CardSimpleListAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->val$bucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/CardSimpleListAdapter;

    iget-object v4, v4, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;->val$elementNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
