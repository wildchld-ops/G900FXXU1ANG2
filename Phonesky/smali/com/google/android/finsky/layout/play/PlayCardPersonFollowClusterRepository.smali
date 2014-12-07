.class public Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;
.super Ljava/lang/Object;
.source "PlayCardPersonFollowClusterRepository.java"


# static fields
.field private static final sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v1, v5, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v8, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v2, v6, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v8, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v1, v6, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v5, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    aput-object v1, v0, v8

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v2, v7, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v1, v7, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v5, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v5, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    aput-object v1, v0, v6

    return-void
.end method

.method public static getMetadata(IZ)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 2
    .param p0    # I
    .param p1    # Z

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->sClusters:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-static {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getConfigurationKey(IZ)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
