.class final Lcom/google/android/finsky/utils/RateReviewHelper$7;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper;->rateDocument(Lcom/google/android/finsky/api/model/Document;ILandroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

.field final synthetic val$rating:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rating:I

    iput-object p3, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    iput-object p4, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckAndConfirmGPlusFailed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;->onRateReviewFailed()V

    return-void
.end method

.method public onCheckAndConfirmGPlusPassed(Lcom/google/android/finsky/api/model/Document;)V
    .locals 8

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->internalFakeItemRaterEnabled:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4097700000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v7, v0, 0x1f4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/RateReviewHelper$7$1;-><init>(Lcom/google/android/finsky/utils/RateReviewHelper$7;Lcom/google/android/finsky/api/model/Document;)V

    int-to-long v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rating:I

    const-string v2, ""

    const-string v3, ""

    iget-object v5, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v6, p0, Lcom/google/android/finsky/utils/RateReviewHelper$7;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/utils/RateReviewHelper;->updateReview(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V

    goto :goto_0
.end method
