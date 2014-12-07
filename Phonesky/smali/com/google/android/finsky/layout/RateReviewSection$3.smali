.class Lcom/google/android/finsky/layout/RateReviewSection$3;
.super Ljava/lang/Object;
.source "RateReviewSection.java"

# interfaces
.implements Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/RateReviewSection;->launchReviewsDialog(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/RateReviewSection;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$prefilledRating:I

.field final synthetic val$review:Lcom/google/android/finsky/protos/DocumentV2$Review;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->val$review:Lcom/google/android/finsky/protos/DocumentV2$Review;

    iput p4, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->val$prefilledRating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckAndConfirmGPlusFailed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/RateReviewSection;->refresh()V

    return-void
.end method

.method public onCheckAndConfirmGPlusPassed(Lcom/google/android/finsky/api/model/Document;)V
    .locals 11

    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const-string v1, "review_dialog"

    invoke-virtual {v8, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    if-eqz v10, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/android/finsky/config/G;->enableReviewComments:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    # getter for: Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/RateReviewSection;->access$300(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    # getter for: Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/RateReviewSection;->access$300(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->val$review:Lcom/google/android/finsky/protos/DocumentV2$Review;

    iget v5, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->val$prefilledRating:I

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    # getter for: Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v3}, Lcom/google/android/finsky/layout/RateReviewSection;->access$300(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->this$0:Lcom/google/android/finsky/layout/RateReviewSection;

    # getter for: Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v3}, Lcom/google/android/finsky/layout/RateReviewSection;->access$300(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v7

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/activities/ReviewDialog;->newInstance(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;II[B)Lcom/google/android/finsky/activities/ReviewDialog;

    move-result-object v9

    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection$3;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lcom/google/android/finsky/activities/ReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v1, "review_dialog"

    invoke-virtual {v9, v8, v1}, Lcom/google/android/finsky/activities/ReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
