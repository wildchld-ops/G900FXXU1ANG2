.class public Landroid/os/dar/encryption/DEKEncryption;
.super Ljava/lang/Object;
.source "DEKEncryption.java"


# static fields
.field private static final DEK_KEY_LEN:I = 0x20

.field private static final RSA_KEY_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "DAR.KnoxKeyPair"

.field private static final debug:Z = true


# instance fields
.field keyPairGenerator:Ljava/security/KeyPairGenerator;

.field mEncPrivKeyBuf:[B

.field mPrivKey:Ljava/security/PrivateKey;

.field mPrivKeyFile:Ljava/io/File;

.field mPubKey:Ljava/security/PublicKey;

.field mPubKeyBuf:[B

.field mPubKeyFile:Ljava/io/File;

.field pair:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->pair:Ljava/security/KeyPair;

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyBuf:[B

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    iput-object p1, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    iput-object p2, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-virtual {p0}, Landroid/os/dar/encryption/DEKEncryption;->isKeyFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/dar/encryption/DEKEncryption;->loadKeyPair()V

    :cond_0
    return-void
.end method

.method private fileRead(Ljava/io/File;)[B
    .locals 6
    .param p1    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    const-string v4, "DAR.KnoxKeyPair"

    const-string v5, "fileRead failed "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method private fileWrite(Ljava/io/File;[B)V
    .locals 5
    .param p1    # Ljava/io/File;
    .param p2    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move-object v1, v2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string v3, "DAR.KnoxKeyPair"

    const-string v4, "fileWrite failed "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private static getHexString([B)Ljava/lang/StringBuffer;
    .locals 3
    .param p0    # [B

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private loadKeyPair()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/os/dar/encryption/DEKEncryption;->fileRead(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyBuf:[B

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v2, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyBuf:[B

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKey:Ljava/security/PublicKey;

    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/os/dar/encryption/DEKEncryption;->fileRead(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    return-void
.end method


# virtual methods
.method public createKeyPair(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    const/16 v4, 0x400

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->keyPairGenerator:Ljava/security/KeyPairGenerator;

    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    iput-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->pair:Ljava/security/KeyPair;

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->pair:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    iput-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKey:Ljava/security/PublicKey;

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->pair:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKey:Ljava/security/PublicKey;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    iput-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyBuf:[B

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    iget-object v4, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyBuf:[B

    invoke-direct {p0, v3, v4}, Landroid/os/dar/encryption/DEKEncryption;->fileWrite(Ljava/io/File;[B)V

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    const-string v3, "DAR.KnoxKeyPair"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrivKey encrypting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, p1}, Landroid/os/dar/encryption/EncryptionAPI;->encryptPrivKey([BLjava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    const-string v3, "DAR.KnoxKeyPair"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrivKey encrypted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    invoke-static {v5}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    iget-object v4, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    invoke-direct {p0, v3, v4}, Landroid/os/dar/encryption/DEKEncryption;->fileWrite(Ljava/io/File;[B)V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "DAR.KnoxKeyPair"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createKeypair failed : can\'t create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public decryptDEK([B)[B
    .locals 6
    .param p1    # [B

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKey:Ljava/security/PrivateKey;

    if-nez v3, :cond_0

    const-string v3, "DAR.KnoxKeyPair"

    const-string v4, "DEK decryption failed :: private-key not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKey:Ljava/security/PrivateKey;

    invoke-static {p1, v3}, Landroid/os/dar/encryption/EncryptionAPI;->decryptDEK([BLjava/security/PrivateKey;)[B

    move-result-object v0

    const-string v3, "DAR.KnoxKeyPair"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEK decrypted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public decryptPrivKey(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v2, "DAR.KnoxKeyPair"

    const-string v3, "Null pw or encrypted private-key buffer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    invoke-static {v2, p1}, Landroid/os/dar/encryption/EncryptionAPI;->decryptPrivKey([BLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "DAR.KnoxKeyPair"

    const-string/jumbo v3, "private key decryption failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "DAR.KnoxKeyPair"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PrivKey decrypted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    invoke-static {v4}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKey:Ljava/security/PrivateKey;

    const-string v2, "DAR.KnoxKeyPair"

    const-string v3, "Private key available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public destroyKeyPair()V
    .locals 1

    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public encryptDEK([B)[B
    .locals 5
    .param p1    # [B

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKey:Ljava/security/PublicKey;

    if-nez v2, :cond_0

    const-string v2, "DAR.KnoxKeyPair"

    const-string v3, "DEK encryption failed :: public-key not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "DAR.KnoxKeyPair"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEK encrypting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKey:Ljava/security/PublicKey;

    invoke-static {p1, v2}, Landroid/os/dar/encryption/EncryptionAPI;->encryptDEK([BLjava/security/PublicKey;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "DAR.KnoxKeyPair"

    const-string v3, "DEK encryption failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "DAR.KnoxKeyPair"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEK encrypted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public generateDEK()[B
    .locals 4

    const/16 v1, 0x20

    new-array v0, v1, [B

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const-string v1, "DAR.KnoxKeyPair"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEK (created) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isKeyFiles()Z
    .locals 1

    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPubKeyFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nullfyPrivKey()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public reEncryptPrivKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v6, "DAR.KnoxKeyPair"

    const-string v7, "Null pw or encrypted private-key buffer"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v6, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    invoke-static {v6, p1}, Landroid/os/dar/encryption/EncryptionAPI;->decryptPrivKey([BLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_3

    const-string v6, "DAR.KnoxKeyPair"

    const-string/jumbo v7, "private key decryption failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const-string v6, "DAR.KnoxKeyPair"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PrivKey encrypting : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, p2}, Landroid/os/dar/encryption/EncryptionAPI;->encryptPrivKey([BLjava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/os/dar/encryption/DEKEncryption;->mPrivKeyFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    const-string v5, "DAR.KnoxKeyPair"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrivKey encrypted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/dar/encryption/DEKEncryption;->mEncPrivKeyBuf:[B

    invoke-static {v7}, Landroid/os/dar/encryption/DEKEncryption;->getHexString([B)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "DAR.KnoxKeyPair"

    const-string/jumbo v6, "reEncryptPrivKey out.close() failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v6, "DAR.KnoxKeyPair"

    const-string/jumbo v7, "reEncryptPrivKey out.close() failed "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    throw v5

    :catch_3
    move-exception v1

    const-string v6, "DAR.KnoxKeyPair"

    const-string/jumbo v7, "reEncryptPrivKey out.close() failed "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method
