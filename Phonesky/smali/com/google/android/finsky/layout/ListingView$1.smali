.class Lcom/google/android/finsky/layout/ListingView$1;
.super Ljava/lang/Object;
.source "ListingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ListingView;->addWebLinkSection(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ListingView;

.field final synthetic val$clickEventType:I

.field final synthetic val$clickIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView$1;->this$0:Lcom/google/android/finsky/layout/ListingView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$clickIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$clickEventType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView$1;->this$0:Lcom/google/android/finsky/layout/ListingView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$clickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$clickEventType:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView$1;->this$0:Lcom/google/android/finsky/layout/ListingView;

    # getter for: Lcom/google/android/finsky/layout/ListingView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    invoke-static {v3}, Lcom/google/android/finsky/layout/ListingView;->access$000(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
