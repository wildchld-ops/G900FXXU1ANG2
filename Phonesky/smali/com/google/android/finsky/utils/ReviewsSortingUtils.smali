.class public Lcom/google/android/finsky/utils/ReviewsSortingUtils;
.super Ljava/lang/Object;
.source "ReviewsSortingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;
    }
.end annotation


# static fields
.field private static sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    new-instance v1, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    const/4 v2, 0x4

    const v3, 0x7f0901b1

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;-><init>(II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    const v2, 0x7f0901b2

    invoke-direct {v1, v4, v2}, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;-><init>(II)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    const v3, 0x7f0901b3

    invoke-direct {v2, v5, v3}, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    return-void
.end method

.method public static convertDataSortTypeToDisplayIndex(Lcom/google/android/finsky/api/model/DfeReviews;)I
    .locals 4
    .param p0    # Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    aget-object v0, v3, v2

    iget v3, v0, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;->mProtocolSortType:I

    if-ne v1, v3, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static convertDisplayIndexToDataSortType(I)I
    .locals 1
    .param p0    # I

    if-ltz p0, :cond_0

    sget-object v0, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;->mProtocolSortType:I

    goto :goto_0
.end method

.method public static getAllDisplayStrings(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 3
    .param p0    # Landroid/content/Context;

    sget-object v2, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;->mDisplayStringId:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getDisplayString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # I

    sget-object v0, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->sSortingInfoArray:[Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;->mProtocolSortType:I

    if-ne p1, v4, :cond_0

    iget v4, v3, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;->mDisplayStringId:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
