.class final Lcom/google/android/finsky/utils/RateReviewHelper$4;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper;->updateReview(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$clientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iput-object p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$clientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/utils/ClientMutationCache;->removeCachedReview(Ljava/lang/String;)V

    const-string v1, "Error posting review: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$context:Landroid/content/Context;

    # invokes: Lcom/google/android/finsky/utils/RateReviewHelper;->showReviewError(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/RateReviewHelper;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$4;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-interface {v1}, Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;->onRateReviewFailed()V

    return-void
.end method
