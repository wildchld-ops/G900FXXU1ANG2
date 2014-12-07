.class Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;
.super Ljava/lang/Object;
.source "NowPlayingCellSorter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;",
        ">;"
    }
.end annotation


# instance fields
.field blockIndexInRow:I

.field cellAreaInPixels:J

.field cellIndexInBlock:I

.field rowIndexInWidget:I

.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    iput p3, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    iput p4, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-wide v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    iget-wide v4, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    iget-wide v4, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellAreaInPixels:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->rowIndexInWidget:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->blockIndexInRow:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    iget v3, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->cellIndexInBlock:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;->compareTo(Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter$CellInformation;)I

    move-result v0

    return v0
.end method
