.class public Lcom/google/android/finsky/utils/DocV2Utils;
.super Ljava/lang/Object;
.source "DocV2Utils.java"


# direct methods
.method public static getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;
    .locals 3
    .param p0    # Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget v2, v2, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    if-ne v2, p1, :cond_0

    aget-object v2, v1, v0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
