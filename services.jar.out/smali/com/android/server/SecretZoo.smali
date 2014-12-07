.class public Lcom/android/server/SecretZoo;
.super Ljava/lang/Object;
.source "SecretZoo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecretZoo$1;,
        Lcom/android/server/SecretZoo$Secret;
    }
.end annotation


# static fields
.field private static final SECRET_TEXT_LEN:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SDP.SecretZoo"


# instance fields
.field salt:[B

.field secretLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SecretZoo;->salt:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SecretZoo;->secretLock:Ljava/lang/Object;

    return-void
.end method

.method private compareText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private encryptText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/dar/encryption/EncryptionAPI;->encryptAES([B[B)[B

    move-result-object v0

    invoke-static {v0}, Landroid/os/dar/encryption/EncryptionAPI;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateText()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0}, Landroid/os/dar/encryption/EncryptionAPI;->generateText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public confirmSecret(ILjava/lang/String;)Z
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const-string v2, "SDP.SecretZoo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmSecret("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/dar/log/SdpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/SecretZoo$Secret;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/SecretZoo$Secret;-><init>(Lcom/android/server/SecretZoo;ILcom/android/server/SecretZoo$1;)V

    iget-object v3, p0, Lcom/android/server/SecretZoo;->secretLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    # invokes: Lcom/android/server/SecretZoo$Secret;->load()Z
    invoke-static {v1}, Lcom/android/server/SecretZoo$Secret;->access$200(Lcom/android/server/SecretZoo$Secret;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SDP.SecretZoo"

    const-string v4, "confirmSecret() : can\'t load secret"

    invoke-static {v2, v4}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lcom/android/server/SecretZoo$Secret;->plainText:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/android/server/SecretZoo;->encryptText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SecretZoo$Secret;->cipherText:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/server/SecretZoo;->compareText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public createSecret(ILjava/lang/String;)Z
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const-string v4, "SDP.SecretZoo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSecret("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/dar/log/SdpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/SecretZoo$Secret;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/SecretZoo$Secret;-><init>(Lcom/android/server/SecretZoo;ILcom/android/server/SecretZoo$1;)V

    invoke-direct {p0}, Lcom/android/server/SecretZoo;->generateText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/SecretZoo;->encryptText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/SecretZoo;->secretLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    # invokes: Lcom/android/server/SecretZoo$Secret;->store(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v1, v0}, Lcom/android/server/SecretZoo$Secret;->access$100(Lcom/android/server/SecretZoo$Secret;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v5

    return v2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public forgetSecret(I)Z
    .locals 4
    .param p1    # I

    const-string v1, "SDP.SecretZoo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forgetSecret("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/dar/log/SdpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/SecretZoo$Secret;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/SecretZoo$Secret;-><init>(Lcom/android/server/SecretZoo;ILcom/android/server/SecretZoo$1;)V

    # invokes: Lcom/android/server/SecretZoo$Secret;->delete()Z
    invoke-static {v0}, Lcom/android/server/SecretZoo$Secret;->access$300(Lcom/android/server/SecretZoo$Secret;)Z

    const/4 v1, 0x0

    return v1
.end method
