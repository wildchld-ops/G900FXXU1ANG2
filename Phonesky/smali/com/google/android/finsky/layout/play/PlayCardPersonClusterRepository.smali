.class public Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;
.super Ljava/lang/Object;
.source "PlayCardPersonClusterRepository.java"


# static fields
.field private static final sClusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->sClusters:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->sClusters:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v1, v8, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v5, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->sClusters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v2, v9, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->sClusters:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v5, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v9, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->sClusters:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v9, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->sClusters:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v5, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v9, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static getMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 2
    .param p0    # I

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->sClusters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getConfigurationKey(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    return-object v0
.end method
