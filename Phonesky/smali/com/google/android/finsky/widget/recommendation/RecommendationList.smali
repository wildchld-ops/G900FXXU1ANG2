.class public Lcom/google/android/finsky/widget/recommendation/RecommendationList;
.super Ljava/lang/Object;
.source "RecommendationList.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Collection",
        "<",
        "Lcom/google/android/finsky/widget/recommendation/Recommendation;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/widget/recommendation/RecommendationList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackendId:I

.field private final mRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/recommendation/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mTitle:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mBackendId:I

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/widget/recommendation/Recommendation;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->add(Lcom/google/android/finsky/widget/recommendation/Recommendation;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/widget/recommendation/Recommendation;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->add(Lcom/google/android/finsky/widget/recommendation/Recommendation;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/google/android/finsky/widget/recommendation/Recommendation;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    return-object v0
.end method

.method public getBackendId()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mBackendId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/widget/recommendation/Recommendation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lcom/google/android/finsky/widget/recommendation/RecommendationList;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public needsBackfill()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v1

    sget-object v0, Lcom/google/android/finsky/config/G;->minimumNumberOfRecs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-virtual {v1}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->remove(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeExpiredRecommendations()I
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    return v3
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mBackendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToDisk(Landroid/content/Context;)V
    .locals 6

    iget v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mBackendId:I

    invoke-static {p1, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p0}, Lcom/google/android/finsky/utils/ParcelUtils;->writeToDisk(Ljava/io/File;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unable to cache recs for %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mBackendId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mBackendId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->mRecommendations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
