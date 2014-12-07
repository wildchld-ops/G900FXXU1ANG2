.class Lcom/google/android/finsky/layout/SubscriptionView$2;
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


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SubscriptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    # getter for: Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I
    invoke-static {v0}, Lcom/google/android/finsky/layout/SubscriptionView;->access$100(Lcom/google/android/finsky/layout/SubscriptionView;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    # invokes: Lcom/google/android/finsky/layout/SubscriptionView;->collapseDescription()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/SubscriptionView;->access$200(Lcom/google/android/finsky/layout/SubscriptionView;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->access$102(Lcom/google/android/finsky/layout/SubscriptionView;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    # invokes: Lcom/google/android/finsky/layout/SubscriptionView;->expandDescription()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/SubscriptionView;->access$300(Lcom/google/android/finsky/layout/SubscriptionView;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    # setter for: Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->access$102(Lcom/google/android/finsky/layout/SubscriptionView;I)I

    goto :goto_0
.end method
