.class public Landroid/os/dar/encryption/EncryptionAPI;
.super Ljava/lang/Object;
.source "EncryptionAPI.java"


# static fields
.field private static final PW_PADDING_SIDE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "DAR.EncryptionAPI"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _decryptAES([BLjava/security/Key;)[B
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    const/4 v9, 0x0

    const/4 v2, 0x0

    :try_start_2
    array-length v3, p0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v9

    invoke-virtual {v0, v4, v9}, Ljavax/crypto/Cipher;->doFinal([BI)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    add-int/2addr v9, v1

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :goto_0
    return-object v8

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "invalid key for private-key decryption"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "decryption failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static _encryptAES([BLjava/security/Key;)[B
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_2
    array-length v3, p0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    add-int/2addr v6, v1

    :goto_0
    return-object v4

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v10

    goto :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v10

    goto :goto_0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "encryption failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v10

    goto :goto_0
.end method

.method private static addPadding(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    new-array v2, v4, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x61

    aput-byte v3, v2, v0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method private static addPadding([B)[B
    .locals 4

    const/16 v3, 0x20

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x61

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decryptAES([B[B)[B
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "Invalid arguments (data or key)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/os/dar/encryption/EncryptionAPI;->addPadding([B)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/dar/encryption/EncryptionAPI;->_decryptAES([BLjava/security/Key;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static decryptDEK([BLjava/security/PrivateKey;)[B
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    const/4 v10, 0x0

    :try_start_2
    const-string v1, "DAR.EncryptionAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptedDEK.length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DAR.EncryptionAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ptLength : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    array-length v3, p0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v10

    invoke-virtual {v0, v4, v10}, Ljavax/crypto/Cipher;->doFinal([BI)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    add-int/2addr v10, v1

    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    :goto_0
    return-object v9

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "decryption failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decryptDEK([B[BLjava/lang/String;)[B
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2}, Landroid/os/dar/encryption/EncryptionAPI;->decryptPrivKey([BLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_1
    :try_start_1
    invoke-static {p0, v2}, Landroid/os/dar/encryption/EncryptionAPI;->decryptDEK([BLjava/security/PrivateKey;)[B
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static decryptData([B[B)[B
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "Invalid arguments (data or key)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/os/dar/encryption/EncryptionAPI;->addPadding([B)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/dar/encryption/EncryptionAPI;->_decryptAES([BLjava/security/Key;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static decryptPrivKey([BLjava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "Invalid arguments (privKey or pw)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/os/dar/encryption/EncryptionAPI;->addPadding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/dar/encryption/EncryptionAPI;->_decryptAES([BLjava/security/Key;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static encryptAES([B[B)[B
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "Invalid arguments (data or key)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/os/dar/encryption/EncryptionAPI;->addPadding([B)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/dar/encryption/EncryptionAPI;->_encryptAES([BLjava/security/Key;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static encryptDEK([BLjava/security/PublicKey;)[B
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_2
    array-length v3, p0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    add-int/2addr v6, v1

    :goto_0
    return-object v4

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v10

    goto :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v10

    goto :goto_0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "encryption failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v10

    goto :goto_0
.end method

.method public static encryptData([B[B)[B
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "Invalid arguments (data or key)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/os/dar/encryption/EncryptionAPI;->addPadding([B)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/dar/encryption/EncryptionAPI;->_encryptAES([BLjava/security/Key;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static encryptPrivKey([BLjava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "DAR.EncryptionAPI"

    const-string v2, "Invalid arguments (privKey or pw)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/os/dar/encryption/EncryptionAPI;->addPadding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/dar/encryption/EncryptionAPI;->_encryptAES([BLjava/security/Key;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static generateSalt(I)[B
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-array v1, p0, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static generateText(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/os/dar/encryption/EncryptionAPI;->generateSalt(I)[B

    move-result-object v0

    invoke-static {v0}, Landroid/os/dar/encryption/EncryptionAPI;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hash(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    const-string v6, "DAR.EncryptionAPI"

    const-string v7, "generateSecretKey enter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    const/16 v3, 0x100

    const/4 v4, 0x0

    :try_start_0
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/16 v7, 0x3e8

    const/16 v8, 0x100

    invoke-direct {v2, v6, p1, v7, v8}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v5, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Landroid/os/dar/encryption/EncryptionAPI;->bytesToString([B)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1
.end method
