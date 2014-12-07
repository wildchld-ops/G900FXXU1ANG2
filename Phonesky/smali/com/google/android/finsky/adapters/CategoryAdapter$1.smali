.class Lcom/google/android/finsky/adapters/CategoryAdapter$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CategoryAdapter;->getCategoryRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

.field final synthetic val$category:Lcom/google/android/finsky/protos/Browse$BrowseLink;

.field final synthetic val$finalHolder:Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CategoryAdapter;Lcom/google/android/finsky/protos/Browse$BrowseLink;Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$category:Lcom/google/android/finsky/protos/Browse$BrowseLink;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$finalHolder:Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    # getter for: Lcom/google/android/finsky/adapters/CategoryAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/CategoryAdapter;->access$200(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$category:Lcom/google/android/finsky/protos/Browse$BrowseLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Browse$BrowseLink;->dataUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$category:Lcom/google/android/finsky/protos/Browse$BrowseLink;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Browse$BrowseLink;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    # getter for: Lcom/google/android/finsky/adapters/CategoryAdapter;->mBackendId:I
    invoke-static {v3}, Lcom/google/android/finsky/adapters/CategoryAdapter;->access$000(Lcom/google/android/finsky/adapters/CategoryAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->this$0:Lcom/google/android/finsky/adapters/CategoryAdapter;

    # getter for: Lcom/google/android/finsky/adapters/CategoryAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v4}, Lcom/google/android/finsky/adapters/CategoryAdapter;->access$100(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CategoryAdapter$1;->val$finalHolder:Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
