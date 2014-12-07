.class final Lcom/google/android/finsky/utils/PlayCardUtils$7;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->bindReasonUser(Lcom/google/android/finsky/layout/FifeImageView;Lcom/google/android/finsky/protos/DocumentV2$DocV2;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cardNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$reasonUser:Lcom/google/android/finsky/protos/DocumentV2$DocV2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/DocumentV2$DocV2;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$reasonUser:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$cardNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$reasonUser:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-boolean v2, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$reasonUser:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v0, v2}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    new-instance v1, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v2, 0x117

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$cardNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$7;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
