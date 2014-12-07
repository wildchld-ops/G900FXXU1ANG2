.class public Lcom/google/android/finsky/utils/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;,
        Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static ENCRYPTED_V0_SIZE_FOOTER:I

.field private static ENCRYPTED_V0_SIZE_HEADER:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Finsky"

    sput-object v0, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    const/16 v0, 0x15

    sput v0, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    const/16 v0, 0x14

    sput v0, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    return-void
.end method

.method public static callInstallEncrypted(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0    # Landroid/content/ContentResolver;
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/content/pm/IPackageInstallObserver;
    .param p4    # I
    .param p5    # J
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p5

    move-object v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PackageManagerUtils;->generateEncryptionParams(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ContainerEncryptionParams;

    const-string v4, "com.android.vending"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/PackageManager;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V

    return-void
.end method

.method public static freeStorageAndNotify(Landroid/content/Context;JLcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/utils/PackageManagerUtils$2;

    invoke-direct {v1, p3}, Lcom/google/android/finsky/utils/PackageManagerUtils$2;-><init>(Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method private static generateEncryptionParams(Landroid/content/ContentResolver;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 35
    .param p0    # Landroid/content/ContentResolver;
    .param p1    # Landroid/net/Uri;
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const/16 v3, 0x10

    new-array v0, v3, [B

    move-object/from16 v25, v0

    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v26, v0

    const/16 v3, 0x14

    new-array v0, v3, [B

    move-object/from16 v21, v0

    :try_start_0
    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    add-int/lit8 v3, v3, 0x1

    sget v33, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    add-int v3, v3, v33

    int-to-long v0, v3

    move-wide/from16 v33, v0

    cmp-long v3, p2, v33

    if-gez v3, :cond_0

    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Size "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " too small in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v28

    new-instance v24, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v28

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->read()I

    move-result v32

    if-eqz v32, :cond_1

    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Wrong version byte "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual/range {v24 .. v25}, Ljava/io/DataInputStream;->readFully([B)V

    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    sget v33, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    add-int v3, v3, v33

    int-to-long v0, v3

    move-wide/from16 v33, v0

    sub-long v30, p2, v33

    :goto_1
    const-wide/16 v33, 0x0

    cmp-long v3, v30, v33

    if-gtz v3, :cond_2

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v17

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v22

    :try_start_1
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v29

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    shr-int/lit8 v3, v18, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v3, v18, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v3, v18, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v3, v18, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual/range {v29 .. v29}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v19

    const/16 v27, 0x1

    const/16 v23, 0x0

    :goto_2
    const/4 v3, 0x3

    move/from16 v0, v23

    if-le v0, v3, :cond_3

    if-nez v27, :cond_5

    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Key hash mismatch while reading "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    :try_start_2
    move-object/from16 v0, v24

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v33

    sub-long v30, v30, v33

    goto/16 :goto_1

    :catch_0
    move-exception v20

    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Exception "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " while opening "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v20

    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Exception "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " while reading "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_3
    aget-byte v3, v19, v23

    aget-byte v33, v26, v23
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v0, v33

    if-ne v3, v0, :cond_4

    const/4 v3, 0x1

    :goto_3
    and-int v27, v27, v3

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :catch_2
    move-exception v20

    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Couldn\'t create SHA1 digest: "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v4, "AES/CBC/PKCS5Padding"

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v7, "HMACSHA1"

    const/4 v8, 0x0

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMACSHA1"

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v10, v21

    const-wide/16 v11, 0x0

    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_HEADER:I

    int-to-long v13, v3

    sget v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->ENCRYPTED_V0_SIZE_FOOTER:I

    int-to-long v0, v3

    move-wide/from16 v33, v0

    sub-long v15, p2, v33

    :try_start_4
    new-instance v3, Landroid/content/pm/ContainerEncryptionParams;

    invoke-direct/range {v3 .. v16}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v20

    sget-object v3, Lcom/google/android/finsky/utils/PackageManagerUtils;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Exception "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " while creating ContainerEncryptionParams"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static installExistingPackage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/net/Uri;
    .param p2    # Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    .param p3    # I
    .param p4    # J
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;

    new-instance v3, Lcom/google/android/finsky/utils/PackageManagerUtils$1;

    invoke-direct {v3, p2}, Lcom/google/android/finsky/utils/PackageManagerUtils$1;-><init>(Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p1

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/utils/PackageManagerUtils;->callInstallEncrypted(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.android.vending"

    invoke-virtual {v1, p1, v3, p3, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static isEncryptionSupported()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-class v6, Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    :try_start_0
    const-string v9, "android.content.pm.ManifestDigest"

    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v9, "android.content.pm.ContainerEncryptionParams"

    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x7

    new-array v4, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/net/Uri;

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/pm/IPackageInstallObserver;

    aput-object v10, v4, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/String;

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-class v10, Landroid/net/Uri;

    aput-object v10, v4, v9

    const/4 v9, 0x5

    aput-object v1, v4, v9

    const/4 v9, 0x6

    aput-object v5, v4, v9

    const-string v9, "installPackageWithVerification"

    invoke-virtual {v6, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    return v7

    :catch_0
    move-exception v2

    move v7, v8

    goto :goto_0

    :catch_1
    move-exception v2

    move v7, v8

    goto :goto_0
.end method

.method public static uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    return-void
.end method
