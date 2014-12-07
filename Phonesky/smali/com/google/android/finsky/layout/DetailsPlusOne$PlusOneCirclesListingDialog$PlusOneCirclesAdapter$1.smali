.class Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;
.super Ljava/lang/Object;
.source "DetailsPlusOne.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    iput p2, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    invoke-static {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->access$400(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget v4, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->val$position:I

    aget-object v2, v3, v4

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->access$500(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    if-eqz v3, :cond_0

    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v0, v2}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    new-instance v1, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v3, 0x117

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    invoke-static {v6}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->access$600(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->access$500(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->mDialog:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;
    invoke-static {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;->access$700(Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$PlusOneCirclesAdapter;)Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->dismiss()V

    :cond_0
    return-void
.end method
