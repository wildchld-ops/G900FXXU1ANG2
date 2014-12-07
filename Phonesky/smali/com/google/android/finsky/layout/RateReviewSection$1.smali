.class Lcom/google/android/finsky/layout/RateReviewSection$1;
.super Ljava/lang/Object;
.source "RateReviewSection.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/RateReviewSection;->configure(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/library/Libraries;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;ZZLcom/google/android/finsky/protos/DocumentV2$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/RateReviewSection;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 4
    .param p1    # Landroid/widget/RatingBar;
    .param p2    # F
    .param p3    # Z

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x4b1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    # getter for: Lcom/google/android/finsky/layout/RateReviewSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    invoke-static {v3}, Lcom/google/android/finsky/layout/RateReviewSection;->access$000(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/google/android/finsky/layout/RateReviewSection$1;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    # getter for: Lcom/google/android/finsky/layout/RateReviewSection;->mReview:Lcom/google/android/finsky/protos/DocumentV2$Review;
    invoke-static {v2}, Lcom/google/android/finsky/layout/RateReviewSection;->access$100(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v2

    float-to-int v3, p2

    # invokes: Lcom/google/android/finsky/layout/RateReviewSection;->launchReviewsDialog(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/RateReviewSection;->access$200(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V

    goto :goto_0
.end method
