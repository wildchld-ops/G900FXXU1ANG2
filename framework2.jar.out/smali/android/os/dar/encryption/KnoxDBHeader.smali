.class public Landroid/os/dar/encryption/KnoxDBHeader;
.super Ljava/lang/Object;
.source "KnoxDBHeader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static final DEK_SIZE_LEN:I = 0x4

.field protected static final MAGIC:Ljava/lang/String; = "Kn@X"

.field protected static final MAGIC_LEN:I = 0x4

.field public static final MASK:I = 0xff

.field protected static final PERSONAID_LEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DAR.KnoxDBHeader"

.field public static final debug:Z


# instance fields
.field public isValid:Z

.field mDEK:[B

.field mDEKLen:I

.field mHDR:[B

.field mPersonaId:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mPersonaId:I

    iput v5, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    iput-object v6, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    iput-boolean v5, p0, Landroid/os/dar/encryption/KnoxDBHeader;->isValid:Z

    iput-object v6, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    array-length v4, p2

    add-int/lit8 v4, v4, 0xc

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-ltz p1, :cond_0

    array-length v4, p2

    if-gez v4, :cond_1

    :cond_0
    const-string v4, "DAR.KnoxDBHeader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid arguments (personaId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dek-len:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    array-length v4, p2

    iput v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    iput p1, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mPersonaId:I

    const-string v4, "Kn@X"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mPersonaId:I

    invoke-static {v4}, Landroid/os/dar/encryption/KnoxDBHeader;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length v4, p2

    invoke-static {v4}, Landroid/os/dar/encryption/KnoxDBHeader;->intToByteArray(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iput-object v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->isValid:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, -0x1

    iput v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mPersonaId:I

    iput v10, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    iput-object v8, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    iput-boolean v10, p0, Landroid/os/dar/encryption/KnoxDBHeader;->isValid:Z

    iput-object v8, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    const/4 v6, 0x0

    iput-object p1, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v7, p1

    const/16 v8, 0xc

    if-lt v7, v8, :cond_0

    array-length v7, p1

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v6, 0x0

    new-array v4, v9, [B

    const/4 v1, 0x0

    move v2, v6

    :goto_1
    if-ge v1, v9, :cond_2

    iget-object v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    aget-byte v7, v7, v2

    aput-byte v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    const-string v8, "Kn@X"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->isValid:Z

    const/4 v6, 0x4

    new-array v5, v9, [B

    const/4 v1, 0x0

    move v2, v6

    :goto_2
    if-ge v1, v9, :cond_3

    iget-object v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    aget-byte v7, v7, v2

    aput-byte v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5}, Landroid/os/dar/encryption/KnoxDBHeader;->byteArrayToInt([B)I

    move-result v7

    iput v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mPersonaId:I

    const/16 v6, 0x8

    new-array v3, v9, [B

    const/4 v1, 0x0

    move v2, v6

    :goto_3
    if-ge v1, v9, :cond_4

    iget-object v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    aget-byte v7, v7, v2

    aput-byte v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v3}, Landroid/os/dar/encryption/KnoxDBHeader;->byteArrayToInt([B)I

    move-result v7

    iput v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    const/16 v6, 0xc

    iget v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    new-array v7, v7, [B

    iput-object v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    const/4 v1, 0x0

    move v2, v6

    :goto_4
    iget v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    iget-object v8, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    aget-byte v8, v8, v2

    aput-byte v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iput-boolean v10, p0, Landroid/os/dar/encryption/KnoxDBHeader;->isValid:Z

    goto :goto_0
.end method

.method public static byteArrayToInt([B)I
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p0, v0

    shl-int/lit8 v2, v3, 0x18

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v2, v3

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    return v2
.end method

.method public static intToByteArray(I)[B
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x4

    new-array v0, v3, [B

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, p0

    aput-byte v3, v0, v2

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 5

    iget-boolean v2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->isValid:Z

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DAR.KnoxDBHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++ DUMP HDR > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DAR.KnoxDBHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DAR.KnoxDBHeader"

    const-string v3, "TAG : Kn@X"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DAR.KnoxDBHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persona : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mPersonaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DAR.KnoxDBHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEK-len : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DAR.KnoxDBHeader"

    const-string v3, "DEK : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEKLen:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    add-int/lit8 v3, v0, 0xc

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "DAR.KnoxDBHeader"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    return-object v0
.end method

.method public getDEK()[B
    .locals 1

    iget-object v0, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    return-object v0
.end method

.method public getPersonaId()I
    .locals 1

    iget v0, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mPersonaId:I

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    if-nez v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    if-nez v0, :cond_0

    const-string v2, "TAG|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const-string v2, " P-LEN|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const-string v2, " D-LEN|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    const-string v2, " DEK|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mDEK:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0xc

    if-ne v0, v2, :cond_4

    const-string v2, " DATA|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v2, p0, Landroid/os/dar/encryption/KnoxDBHeader;->mHDR:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
