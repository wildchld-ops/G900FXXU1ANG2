.class Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;
.super Ljava/lang/Object;
.source "PlayQuickLinkBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->bind(Lcom/google/android/finsky/protos/Browse$QuickLink;ILcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;

.field final synthetic val$backendId:I

.field final synthetic val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$quickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/Browse$QuickLink;ILcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->this$0:Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$quickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;

    iput p4, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$backendId:I

    iput-object p5, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$quickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$quickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$backendId:I

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;->this$0:Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->resolveLink(Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
