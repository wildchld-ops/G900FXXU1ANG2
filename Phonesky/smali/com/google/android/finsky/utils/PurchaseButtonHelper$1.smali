.class final Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;
.super Ljava/lang/Object;
.source "PurchaseButtonHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionClickListener(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

.field final synthetic val$clickNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field final synthetic val$continueUrl:Ljava/lang/String;

.field final synthetic val$elementType:I

.field final synthetic val$externalReferrer:Ljava/lang/String;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$elementType:I

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$clickNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p4, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$action:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iput-object p5, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$externalReferrer:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$continueUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$elementType:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$clickNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$action:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget-object v1, v1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$action:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget-object v2, v2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->document:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$action:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget-object v4, v4, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    iget-object v5, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$externalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;->val$continueUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
