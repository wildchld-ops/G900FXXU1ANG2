.class final Lcom/google/android/finsky/utils/RateReviewHelper$6;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper;->deleteReview(Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$6;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$6;->val$context:Landroid/content/Context;

    # invokes: Lcom/google/android/finsky/utils/RateReviewHelper;->showReviewDeleteError(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/google/android/finsky/utils/RateReviewHelper;->access$100(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$6;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;->onRateReviewFailed()V

    return-void
.end method
