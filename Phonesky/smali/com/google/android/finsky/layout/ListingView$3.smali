.class Lcom/google/android/finsky/layout/ListingView$3;
.super Ljava/lang/Object;
.source "ListingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ListingView;->addFlagContentSection(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ListingView;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ListingView;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView$3;->this$0:Lcom/google/android/finsky/layout/ListingView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/ListingView$3;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView$3;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView$3;->this$0:Lcom/google/android/finsky/layout/ListingView;

    # getter for: Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ListingView;->access$100(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToFlagContent(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0xcf

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView$3;->this$0:Lcom/google/android/finsky/layout/ListingView;

    # getter for: Lcom/google/android/finsky/layout/ListingView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    invoke-static {v3}, Lcom/google/android/finsky/layout/ListingView;->access$000(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
