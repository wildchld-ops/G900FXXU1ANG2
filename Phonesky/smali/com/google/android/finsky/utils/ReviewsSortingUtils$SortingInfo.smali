.class Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;
.super Ljava/lang/Object;
.source "ReviewsSortingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/ReviewsSortingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortingInfo"
.end annotation


# instance fields
.field public final mDisplayStringId:I

.field public final mProtocolSortType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;->mProtocolSortType:I

    iput p2, p0, Lcom/google/android/finsky/utils/ReviewsSortingUtils$SortingInfo;->mDisplayStringId:I

    return-void
.end method
