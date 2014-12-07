.class public Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
.source "PlayCardSingleCardClusterMetadata.java"


# instance fields
.field private mMerchImageHSpan:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v0

    return-object v0
.end method

.method public addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    return-object p0
.end method

.method public getTrailingGap()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->mMerchImageHSpan:I

    return v0
.end method

.method public withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->mMerchImageHSpan:I

    return-object p0
.end method
