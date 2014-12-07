.class final Lcom/google/android/finsky/utils/RateReviewHelper$2;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper;->checkAndConfirmGPlus(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$2;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    const-string v0, "Error getting G+ profile: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/finsky/utils/RateReviewHelper;->showReviewError(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/RateReviewHelper;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$2;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;->onCheckAndConfirmGPlusFailed()V

    return-void
.end method
