.class Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
.super Ljava/io/InputStream;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectByteInputStream"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mPos:I

.field private mSize:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;[BI)V
    .locals 1
    .param p2    # [B
    .param p3    # I

    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iput-object p2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iput p3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final read()I
    .locals 3

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2
    .param p1    # [B
    .param p2    # I
    .param p3    # I

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr v0, p3

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int p3, v0, v1

    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    move v0, p3

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 6
    .param p1    # J

    const-wide/16 v0, 0x0

    iget v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v4, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v2, v3

    int-to-long p1, v2

    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    :goto_0
    return-wide p1

    :cond_1
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    goto :goto_0
.end method
