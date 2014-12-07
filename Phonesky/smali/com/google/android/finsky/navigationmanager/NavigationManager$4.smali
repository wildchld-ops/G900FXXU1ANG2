.class Lcom/google/android/finsky/navigationmanager/NavigationManager$4;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getResolvedLinkClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field final synthetic val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

.field final synthetic val$searchQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$searchQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$searchQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v2, v2, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$clickLogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    if-eqz v0, :cond_0

    const-string v0, "Redeem gift card is not handled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
