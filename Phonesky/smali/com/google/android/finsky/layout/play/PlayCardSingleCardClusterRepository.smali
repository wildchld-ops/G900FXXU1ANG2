.class public Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;
.super Ljava/lang/Object;
.source "PlayCardSingleCardClusterRepository.java"


# static fields
.field public static final SINGLE_CARD_COL2:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final SINGLE_CARD_COL2_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final SINGLE_CARD_COL3:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final SINGLE_CARD_COL3_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field private static final sClusters16x9:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final sClusters1x1:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400ed

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v8, v5, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL2:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400ed

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400ed

    const v2, 0x3fb872b0

    invoke-direct {v0, v1, v8, v6, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL2_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400ed

    const v2, 0x3fb872b0

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    invoke-direct {v1, v8, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL2:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    invoke-direct {v2, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL2:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v8}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    invoke-direct {v1, v8, v6}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL2_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    invoke-direct {v2, v7, v6}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL2_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v2, v8}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->withMerchImageHSpan(I)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->SINGLE_CARD_COL3_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static getMetadata(II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;
    .locals 5
    .param p0    # I
    .param p1    # I

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v0

    const/high16 v4, 0x3f800000

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    :goto_1
    invoke-static {p1, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getConfigurationKey(IZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    return-object v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    goto :goto_1
.end method
