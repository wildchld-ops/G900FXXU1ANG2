.class public Lcom/google/android/finsky/utils/Sha1Util;
.super Ljava/lang/Object;
.source "Sha1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/Sha1Util$1;,
        Lcom/google/android/finsky/utils/Sha1Util$DigestResult;,
        Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;,
        Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;
    }
.end annotation


# direct methods
.method private static digest(Ljava/io/InputStream;)Lcom/google/android/finsky/utils/Sha1Util$DigestResult;
    .locals 13
    .param p0    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v8, 0x400

    new-array v2, v8, [B

    const-wide/16 v6, 0x0

    :try_start_0
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_2

    if-eqz v0, :cond_0

    array-length v8, v2

    if-ne v0, v8, :cond_1

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    :goto_1
    int-to-long v10, v0

    add-long/2addr v6, v10

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v9

    :goto_2
    return-object v8

    :cond_1
    new-array v5, v0, [B

    invoke-static {v2, v12, v5, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    new-instance v8, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;

    const/16 v10, 0xb

    invoke-static {v4, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v6, v7, v9}, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;-><init>(Ljava/lang/String;JLcom/google/android/finsky/utils/Sha1Util$1;)V

    goto :goto_2
.end method

.method public static secureHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static secureHash([B)Ljava/lang/String;
    .locals 4
    .param p0    # [B

    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static verify(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 4
    .param p0    # Ljava/io/InputStream;
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/finsky/utils/Sha1Util;->digest(Ljava/io/InputStream;)Lcom/google/android/finsky/utils/Sha1Util$DigestResult;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->byteCount:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;

    iget-wide v2, v0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->byteCount:J

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;-><init>(JJ)V

    throw v1

    :cond_0
    iget-object v1, v0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->sha1HashBase64:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;

    iget-object v2, v0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->sha1HashBase64:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method
