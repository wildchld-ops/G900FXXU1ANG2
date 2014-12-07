.class public Lorg/keyczar/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static final ALPHABET:[C

.field private static final DECODE:[B

.field private static final WHITESPACE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lorg/keyczar/util/Base64Coder;->WHITESPACE:[C

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/keyczar/util/Base64Coder;->WHITESPACE:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    sget-object v2, Lorg/keyczar/util/Base64Coder;->WHITESPACE:[C

    aget-char v2, v2, v0

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    sget-object v2, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_1
    .array-data 2
        0x9s
        0xas
        0xds
        0x20s
        0xcs
    .end array-data
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v8, v9

    add-int/lit8 v18, v8, -0x1

    aget-char v18, v9, v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    add-int/lit8 v8, v8, -0x1

    :cond_0
    add-int/lit8 v18, v8, -0x1

    aget-char v18, v9, v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    add-int/lit8 v8, v8, -0x1

    :cond_1
    const/16 v17, 0x0

    move-object v2, v9

    array-length v11, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v11, :cond_3

    aget-char v5, v2, v7

    invoke-static {v5}, Lorg/keyczar/util/Base64Coder;->isWhiteSpace(I)Z

    move-result v18

    if-eqz v18, :cond_2

    add-int/lit8 v17, v17, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    sub-int v8, v8, v17

    div-int/lit8 v10, v8, 0x4

    rem-int/lit8 v16, v8, 0x4

    mul-int/lit8 v15, v10, 0x3

    packed-switch v16, :pswitch_data_0

    :goto_1
    new-array v12, v15, [B

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    move v14, v13

    :goto_2
    add-int v18, v8, v17

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    aget-char v18, v9, v6

    invoke-static/range {v18 .. v18}, Lorg/keyczar/util/Base64Coder;->isWhiteSpace(I)Z

    move-result v18

    if-nez v18, :cond_4

    shl-int/lit8 v18, v4, 0x6

    aget-char v19, v9, v6

    invoke-static/range {v19 .. v19}, Lorg/keyczar/util/Base64Coder;->getByte(I)B

    move-result v19

    or-int v4, v18, v19

    add-int/lit8 v3, v3, 0x1

    :cond_4
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v3, v0, :cond_6

    add-int/lit8 v13, v14, 0x1

    shr-int/lit8 v18, v4, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v14

    add-int/lit8 v14, v13, 0x1

    shr-int/lit8 v18, v4, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v13

    add-int/lit8 v13, v14, 0x1

    int-to-byte v0, v4

    move/from16 v18, v0

    aput-byte v18, v12, v14

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v14, v13

    goto :goto_2

    :pswitch_0
    new-instance v18, Lorg/keyczar/exceptions/Base64DecodingException;

    const-string v19, "Base64Coder.IllegalLength"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/keyczar/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v18

    :pswitch_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v15, v15, 0x2

    goto :goto_1

    :cond_5
    packed-switch v3, :pswitch_data_1

    :goto_4
    move v13, v14

    :goto_5
    return-object v12

    :pswitch_3
    add-int/lit8 v13, v14, 0x1

    shr-int/lit8 v18, v4, 0x4

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v14

    goto :goto_5

    :pswitch_4
    add-int/lit8 v13, v14, 0x1

    shr-int/lit8 v18, v4, 0xa

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v14

    add-int/lit8 v14, v13, 0x1

    shr-int/lit8 v18, v4, 0x2

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v13

    goto :goto_4

    :cond_6
    move v13, v14

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static encodeWebSafe([B)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    array-length v10, p0

    div-int/lit8 v4, v10, 0x3

    array-length v10, p0

    rem-int/lit8 v9, v10, 0x3

    mul-int/lit8 v8, v4, 0x4

    packed-switch v9, :pswitch_data_0

    :goto_0
    new-array v5, v8, [C

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v2

    move v7, v6

    :goto_1
    if-ge v1, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    aget-byte v10, p0, v3

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v11, p0, v2

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v2, v3, 0x1

    aget-byte v11, p0, v3

    and-int/lit16 v11, v11, 0xff

    or-int v0, v10, v11

    add-int/lit8 v6, v7, 0x1

    sget-object v10, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v11, v0, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v5, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v10, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v11, v0, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v5, v6

    add-int/lit8 v6, v7, 0x1

    sget-object v10, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v11, v0, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v5, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v10, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    and-int/lit8 v11, v0, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v5, v6

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1

    :pswitch_0
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :pswitch_1
    add-int/lit8 v8, v8, 0x3

    goto :goto_0

    :cond_0
    if-lez v9, :cond_3

    add-int/lit8 v2, v3, 0x1

    aget-byte v10, p0, v3

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v0, v10, 0x10

    if-ne v9, v12, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-byte v10, p0, v2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v0, v10

    move v2, v3

    :cond_1
    add-int/lit8 v6, v7, 0x1

    sget-object v10, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v11, v0, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v5, v7

    add-int/lit8 v7, v6, 0x1

    sget-object v10, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v11, v0, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v5, v6

    if-ne v9, v12, :cond_2

    add-int/lit8 v6, v7, 0x1

    sget-object v10, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v11, v0, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v5, v7

    :goto_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([C)V

    return-object v10

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    move v2, v3

    move v6, v7

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getByte(I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/keyczar/exceptions/Base64DecodingException;

    const-string v1, "Base64Coder.IllegalCharacter"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method private static isWhiteSpace(I)Z
    .locals 2

    sget-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
