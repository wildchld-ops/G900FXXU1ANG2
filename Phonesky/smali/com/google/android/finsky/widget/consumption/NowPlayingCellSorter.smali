.class public Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;
.super Ljava/lang/Object;
.source "NowPlayingCellSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
    }
.end annotation


# instance fields
.field mSequenceMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    return-void
.end method

.method private getCellDescriptor(III)Ljava/lang/String;
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSortedIndex(III)I
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->getCellDescriptor(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public sort(Ljava/util/List;Landroid/content/res/Resources;)V
    .locals 20
    .param p2    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;>;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_1

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/widget/consumption/Block;

    invoke-virtual {v5}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_0

    new-instance v10, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14, v6, v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;III)V

    invoke-virtual {v5, v9}, Lcom/google/android/finsky/widget/consumption/Block;->getImageWidthRes(I)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v5, v9}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int v16, v11, v8

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->mSequenceMapping:Ljava/util/Map;

    move-object/from16 v16, v0

    iget v0, v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    move/from16 v17, v0

    iget v0, v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    move/from16 v18, v0

    iget v0, v12, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->getCellDescriptor(III)Ljava/lang/String;

    move-result-object v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
