.class public Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "FixBrokenCipherSpiProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixBrokenCipherSpi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi$AES;
    }
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mInstance:Ljavax/crypto/Cipher;

.field private mMode:Ljava/lang/String;

.field private mPadding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method private getInstance()Ljavax/crypto/Cipher;
    .locals 11

    iget-object v8, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mInstance:Ljavax/crypto/Cipher;

    if-eqz v8, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mInstance:Ljavax/crypto/Cipher;

    :goto_0
    return-object v4

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cipher."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mMode:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mPadding:Ljava/lang/String;

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mPadding:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v7

    move-object v0, v7

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v6, v0, v3

    instance-of v8, v6, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;

    if-eqz v8, :cond_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mAlgorithm:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v2, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mInstance:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_3

    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No other providers offer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mMode:Ljava/lang/String;

    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->mPadding:Ljava/lang/String;

    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;->getInstance()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    if-nez v0, :cond_0

    # getter for: Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;->EMPTY_BYTE_ARRAY:[B
    invoke-static {}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;->access$100()[B

    move-result-object v0

    :cond_0
    return-object v0
.end method
