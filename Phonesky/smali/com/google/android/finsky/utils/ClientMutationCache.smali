.class public Lcom/google/android/finsky/utils/ClientMutationCache;
.super Ljava/lang/Object;
.source "ClientMutationCache.java"


# instance fields
.field private mDismissedRecommendationDocIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewedDocIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/protos/DocumentV2$Review;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mReviewedDocIds:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mDismissedRecommendationDocIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public dismissRecommendation(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mDismissedRecommendationDocIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCachedReview(Ljava/lang/String;Lcom/google/android/finsky/protos/DocumentV2$Review;)Lcom/google/android/finsky/protos/DocumentV2$Review;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/protos/DocumentV2$Review;

    iget-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mReviewedDocIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mReviewedDocIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/DocumentV2$Review;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public isDismissedRecommendation(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mDismissedRecommendationDocIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeCachedReview(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mReviewedDocIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCachedReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/DocumentV2$Review;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/DocumentV2$Review;-><init>()V

    iput p2, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasStarRating:Z

    iput-object p3, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTitle:Z

    iput-object p4, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasComment:Z

    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/Document;->getBackingDocV2()Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    iget-object v1, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mReviewedDocIds:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCachedReviewDeleted(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/ClientMutationCache;->mReviewedDocIds:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
