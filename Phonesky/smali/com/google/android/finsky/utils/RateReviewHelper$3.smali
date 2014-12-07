.class final Lcom/google/android/finsky/utils/RateReviewHelper$3;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper;->updateReview(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

.field final synthetic val$rating:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    iput p3, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$rating:I

    iput-object p4, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->setMyPeoplePageDirty()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$rateListener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    iget v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$rating:I

    iget-object v2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/utils/RateReviewHelper$3;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;->onRateReviewCommitted(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/RateReviewHelper$3;->onResponse(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)V

    return-void
.end method
