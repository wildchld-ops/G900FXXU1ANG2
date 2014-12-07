.class public Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;
.super Ljava/lang/Object;
.source "PlayCardRateClusterRepository.java"


# static fields
.field private static final sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/high16 v5, 0x3f800000

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    sput-object v3, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v3, 0x7f0400e8

    invoke-direct {v0, v3, v9, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v3, 0x7f0400e8

    invoke-direct {v1, v3, v10, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v3, 0x7f0400e8

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v4, v9, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v4, v0, v7, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {v4, v0, v9, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v5, v10, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v5, v1, v7, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    invoke-virtual {v5, v1, v10, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v4, 0x3

    new-instance v5, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v5, v0, v7, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    invoke-virtual {v5, v0, v9, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v4, 0x5

    new-instance v5, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v5, v2, v7, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v2, v6, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v2, v6, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v5, 0xc

    invoke-direct {v4, v5, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v4, v0, v7, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {v4, v0, v9, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v0, v5, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v0, v5, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    aput-object v4, v3, v10

    return-void
.end method

.method public static getMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 2

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getConfigurationKey(IZ)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
