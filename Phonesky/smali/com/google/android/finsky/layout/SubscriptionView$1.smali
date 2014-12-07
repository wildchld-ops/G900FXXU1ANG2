.class Lcom/google/android/finsky/layout/SubscriptionView$1;
.super Ljava/lang/Object;
.source "SubscriptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SubscriptionView;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SubscriptionView;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field final synthetic val$subscriptionDetails:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SubscriptionView;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p4, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$subscriptionDetails:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0xf2

    iget-object v2, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0xe3

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    # getter for: Lcom/google/android/finsky/layout/SubscriptionView;->mCancelListener:Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    invoke-static {v1}, Lcom/google/android/finsky/layout/SubscriptionView;->access$000(Lcom/google/android/finsky/layout/SubscriptionView;)Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/SubscriptionView$1;->val$subscriptionDetails:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;->onCancel(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V

    return-void
.end method
