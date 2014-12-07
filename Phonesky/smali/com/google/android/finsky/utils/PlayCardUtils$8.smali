.class final Lcom/google/android/finsky/utils/PlayCardUtils$8;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->configureOverflowView(Lcom/google/android/play/layout/PlayCardViewBase;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$card:Lcom/google/android/play/layout/PlayCardViewBase;

.field final synthetic val$clickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$overflowView:Landroid/view/View;

.field final synthetic val$wishlistStatusListener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$overflowView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$clickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p4, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p5, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p6, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$wishlistStatusListener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

    iput-object p7, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$dismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    iput-object p8, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$card:Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1    # Landroid/view/View;

    new-instance v1, Lcom/google/android/play/layout/PlayPopupMenu;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$overflowView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/google/android/play/layout/PlayPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v12

    const/16 v2, 0xee

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$clickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v12, v2, v3, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$clickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    # invokes: Lcom/google/android/finsky/utils/PlayCardUtils;->configureActions(Lcom/google/android/play/layout/PlayPopupMenu;Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/utils/PlayCardUtils;->access$500(Lcom/google/android/play/layout/PlayPopupMenu;Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2, v8}, Lcom/google/android/finsky/utils/WishlistHelper;->shouldHideWishlistAction(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v16, 0x7f09033e

    const/16 v17, 0xcd

    :goto_0
    move/from16 v13, v17

    new-instance v15, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v13, v8}, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;-><init>(Lcom/google/android/finsky/utils/PlayCardUtils$8;Lcom/google/android/finsky/analytics/FinskyEventLog;ILcom/google/android/finsky/api/DfeApi;)V

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v15}, Lcom/google/android/play/layout/PlayPopupMenu;->addMenuItem(Ljava/lang/CharSequence;ZLcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$dismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2}, Lcom/google/android/finsky/utils/PlayUtils;->isDismissable(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getNeutralDismissal()Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    move-result-object v2

    iget-object v11, v2, Lcom/google/android/finsky/protos/DocumentV2$Dismissal;->descriptionHtml:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-instance v5, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$card:Lcom/google/android/play/layout/PlayCardViewBase;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$dismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$clickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;-><init>(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {v1, v11, v2, v5}, Lcom/google/android/play/layout/PlayPopupMenu;->addMenuItem(Ljava/lang/CharSequence;ZLcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/play/layout/PlayPopupMenu;->show()V

    return-void

    :cond_2
    const v16, 0x7f09033d

    const/16 v17, 0xcc

    goto :goto_0

    :cond_3
    const-string v2, "Empty dismissal text received from the server for doc %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
