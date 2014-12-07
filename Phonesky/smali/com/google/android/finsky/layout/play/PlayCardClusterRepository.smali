.class public Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;
.super Ljava/lang/Object;
.source "PlayCardClusterRepository.java"


# static fields
.field private static final sClusters16x9:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sClusters1x1:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    sput-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    sput-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x6

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x6

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x6

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x6

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x6

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x6

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x6

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v15, 0x4

    invoke-virtual {v14, v15, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v15, 0x5

    invoke-virtual {v14, v15, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0xa

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0xa

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x6

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0xa

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x6

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    const/4 v15, 0x6

    invoke-virtual {v14, v15, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x4

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x6

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x6

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0x8

    const/16 v17, 0x8

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x4

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x6

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v15, 0x4

    invoke-virtual {v14, v15, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xa

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v15, 0x5

    invoke-virtual {v14, v15, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0xa

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x1

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0xa

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x2

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x3

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0xa

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v14, 0x4

    new-instance v15, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v16, 0xc

    const/16 v17, 0x4

    invoke-direct/range {v15 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    sget-object v16, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const/16 v17, 0x8

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v14, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    const/4 v15, 0x6

    invoke-virtual {v14, v15, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static getConfigurationKey(IZ)I
    .locals 4
    .param p0    # I
    .param p1    # Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v2, "Unsupported number of columns %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMetadata(IIZI)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # Z
    .param p3    # I

    invoke-static {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v0

    const/high16 v3, 0x3f800000

    cmpl-float v3, v0, v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters1x1:Landroid/util/SparseArray;

    :goto_1
    invoke-static {p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getConfigurationKey(IZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    return-object v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->sClusters16x9:Landroid/util/SparseArray;

    goto :goto_1
.end method
