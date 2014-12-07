.class final Lcom/google/gson/stream/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final pool:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/StringPool;->pool:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get([CII)Ljava/lang/String;
    .locals 7
    .param p1    # [C
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v5, p2, p3

    if-ge v1, v5, :cond_0

    mul-int/lit8 v5, v0, 0x1f

    aget-char v6, p1, v1

    add-int v0, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v5, v0, 0x14

    ushr-int/lit8 v6, v0, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    iget-object v5, p0, Lcom/google/gson/stream/StringPool;->pool:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int v2, v0, v5

    iget-object v5, p0, Lcom/google/gson/stream/StringPool;->pool:[Ljava/lang/String;

    aget-object v3, v5, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, p3, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v5, p0, Lcom/google/gson/stream/StringPool;->pool:[Ljava/lang/String;

    aput-object v4, v5, v2

    :goto_1
    return-object v4

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, p2, v1

    aget-char v6, p1, v6

    if-eq v5, v6, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v5, p0, Lcom/google/gson/stream/StringPool;->pool:[Ljava/lang/String;

    aput-object v4, v5, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v4, v3

    goto :goto_1
.end method
