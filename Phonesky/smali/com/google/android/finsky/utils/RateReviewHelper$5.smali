.class final Lcom/google/android/finsky/utils/RateReviewHelper$5;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper;->deleteReview(Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
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
.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$5;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$5;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$5;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/ClientMutationCache;->updateCachedReviewDeleted(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$5;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->setMyPeoplePageDirty()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/RateReviewHelper$5;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    const/4 v1, -0x1

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;->onRateReviewCommitted(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/RateReviewHelper$5;->onResponse(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)V

    return-void
.end method
