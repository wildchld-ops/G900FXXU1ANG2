.class public Lcom/google/android/finsky/widget/consumption/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field private mChildHeightRes:I

.field private mChildResArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mChildWidthRes:I

.field private mHeightRes:I

.field private mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

.field private final mLayoutId:I

.field private mMaxRowStartCount:I

.field private mNumImages:I

.field private mSupportsMetadata:Z

.field private mWidthRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLayoutId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    return-void
.end method


# virtual methods
.method public getHeight(Landroid/content/Context;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mHeightRes:I

    invoke-static {p1, v0}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getImageHeightRes(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildHeightRes:I

    goto :goto_0
.end method

.method public getImageWidthRes(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildWidthRes:I

    goto :goto_0
.end method

.method public getLastOccurenceInRowReplacement()Lcom/google/android/finsky/widget/consumption/Block;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLayoutId:I

    return v0
.end method

.method public getMaxRowStartCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    return v0
.end method

.method public getNumImages()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    return v0
.end method

.method public getWidth(Landroid/content/Context;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mWidthRes:I

    invoke-static {p1, v0}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public hasLastOccurenceInRowReplacement()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxRowStartCount()Z
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/consumption/Block;->getLayoutId()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/consumption/Block;->getMaxRowStartCount()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public hosting(I)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    return-object p0
.end method

.method public hosting(III)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    iput p2, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildWidthRes:I

    iput p3, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildHeightRes:I

    return-object p0
.end method

.method public limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    return-object p0
.end method

.method public markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mSupportsMetadata:Z

    return-object p0
.end method

.method public replaceLastOccurenceInRowWith(Lcom/google/android/finsky/widget/consumption/Block;)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

    return-object p0
.end method

.method public sized(II)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 1

    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mWidthRes:I

    iput p2, p0, Lcom/google/android/finsky/widget/consumption/Block;->mHeightRes:I

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mWidthRes:I

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildWidthRes:I

    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mHeightRes:I

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildHeightRes:I

    return-object p0
.end method

.method public supportsMetadata()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mSupportsMetadata:Z

    return v0
.end method

.method public withChild(III)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method
