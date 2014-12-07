.class public Lcom/google/android/finsky/utils/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# direct methods
.method public static ceil(II)I
    .locals 1
    .param p0    # I
    .param p1    # I

    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method
