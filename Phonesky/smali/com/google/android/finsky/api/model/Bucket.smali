.class public Lcom/google/android/finsky/api/model/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    return-void
.end method


# virtual methods
.method public getBackend()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    return v0
.end method

.method public getBrowseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v0, v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v5, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v4, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v4, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v5, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    return-object v4
.end method

.method public getContainerWithBannerTemplate()Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    return-object v0
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    return-object v0
.end method

.method public getEditorialSeriesContainer()Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    return-object v0
.end method

.method public getEstimatedResults()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    iget-wide v0, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    long-to-int v0, v0

    return v0
.end method

.method public getServerLogsCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasContainerWithBannerTemplate()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->containerWithBanner:Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEditorialSeriesContainer()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->editorialSeriesContainer:Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecommendationsTemplate()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->recommendationsContainer:Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrdered()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    goto :goto_0
.end method
