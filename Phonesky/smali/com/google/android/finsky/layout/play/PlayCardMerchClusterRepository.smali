.class public Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;
.super Ljava/lang/Object;
.source "PlayCardMerchClusterRepository.java"


# static fields
.field private static final sClusters16x9:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final sClusters1x1:Landroid/util/SparseArray;
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

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v2, 0x3

    invoke-direct {v1, v7, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v3, 0x3

    invoke-direct {v2, v9, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v2, 0x3

    invoke-direct {v1, v7, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v3, 0x3

    invoke-direct {v2, v9, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v2, 0x3

    invoke-direct {v1, v9, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v9, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v9, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v1, v7, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v2, v9, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v1, v7, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v2, v9, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-direct {v1, v9, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v9, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v9, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static getMetadata(IIZ)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # Z

    invoke-static {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v0

    const/high16 v3, 0x3f800000

    cmpl-float v3, v0, v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    :goto_1
    invoke-static {p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getConfigurationKey(IZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    return-object v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    goto :goto_1
.end method
