.class Lcom/google/android/finsky/navigationmanager/NavigationManager$5;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$continueUrl:Ljava/lang/String;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$externalReferrer:Ljava/lang/String;

.field final synthetic val$logElementType:I

.field final synthetic val$offerType:I

.field final synthetic val$rootNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$logElementType:I

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$rootNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$account:Landroid/accounts/Account;

    iput-object p5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput p6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$offerType:I

    iput-object p7, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$externalReferrer:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$continueUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$logElementType:I

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$rootNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$offerType:I

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$externalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$continueUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
