.class public Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;
.super Ljava/lang/Object;
.source "PlayCardQuickSuggestionsClusterRepository.java"


# static fields
.field private static final sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

.field private static final sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    sput-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    sput-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e8

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v3, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e8

    const/4 v9, 0x6

    const/4 v10, 0x4

    const v11, 0x3fb872b0

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v6, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e5

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v7, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e5

    const/4 v9, 0x2

    const/4 v10, 0x4

    const v11, 0x3fb872b0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e8

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e8

    const/4 v9, 0x4

    const/4 v10, 0x4

    const v11, 0x3fb872b0

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e6

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    new-instance v5, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v8, 0x7f0400e6

    const/4 v9, 0x2

    const/4 v10, 0x4

    const v11, 0x3fb872b0

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xc

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x1

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xe

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x2

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xa

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x3

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xc

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x4

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xc

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x5

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xe

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x6

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0x10

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xc

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x1

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xe

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x2

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xa

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x3

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xc

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x4

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xc

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x5

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0xe

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/4 v9, 0x6

    new-instance v10, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    const/16 v11, 0x12

    const/4 v12, 0x4

    invoke-direct {v10, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;-><init>(II)V

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v10

    aput-object v10, v8, v9

    return-void
.end method

.method public static getMetadata(IIZ)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 4

    invoke-static {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v0

    const/high16 v3, 0x3f800000

    cmpl-float v3, v0, v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters1x1:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    :goto_1
    invoke-static {p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getConfigurationKey(IZ)I

    move-result v3

    aget-object v3, v1, v3

    return-object v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->sClusters16x9:[Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    goto :goto_1
.end method
