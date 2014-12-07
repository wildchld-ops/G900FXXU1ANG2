.class Lcom/google/android/finsky/utils/RateReviewHelper$7$1;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper$7;->onCheckAndConfirmGPlusPassed(Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/RateReviewHelper$7;

.field final synthetic val$plusDoc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/RateReviewHelper$7;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;->this$0:Lcom/google/android/finsky/utils/RateReviewHelper$7;

    iput-object p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;->val$plusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;->this$0:Lcom/google/android/finsky/utils/RateReviewHelper$7;

    iget-object v1, v1, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;->this$0:Lcom/google/android/finsky/utils/RateReviewHelper$7;

    iget v2, v2, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rating:I

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;->val$plusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/ClientMutationCache;->updateCachedReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;->this$0:Lcom/google/android/finsky/utils/RateReviewHelper$7;

    iget-object v1, v1, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    iget-object v2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;->this$0:Lcom/google/android/finsky/utils/RateReviewHelper$7;

    iget v2, v2, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rating:I

    const-string v3, ""

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;->onRateReviewCommitted(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
