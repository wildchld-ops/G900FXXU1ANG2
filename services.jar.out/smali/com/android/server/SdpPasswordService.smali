.class public Lcom/android/server/SdpPasswordService;
.super Ljava/lang/Object;
.source "SdpPasswordService.java"


# static fields
.field private static final SALT_LEN:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SDP.SdpPasswordService"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mSdpKeySaltStorages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/storage/SaltStorage;",
            ">;"
        }
    .end annotation
.end field

.field mSdpSaltStorageFactory:Landroid/os/storage/SaltStorageFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpPasswordService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/storage/SaltStorageFactory;->getInstance()Landroid/os/storage/SaltStorageFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpPasswordService;->mSdpSaltStorageFactory:Landroid/os/storage/SaltStorageFactory;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpPasswordService;->mSdpKeySaltStorages:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/SdpPasswordService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSdpSaltStorageLocked(I)Landroid/os/storage/SaltStorage;
    .locals 4

    iget-object v1, p0, Lcom/android/server/SdpPasswordService;->mSdpKeySaltStorages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/SaltStorage;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpPasswordService;->mSdpSaltStorageFactory:Landroid/os/storage/SaltStorageFactory;

    iget-object v2, p0, Lcom/android/server/SdpPasswordService;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/storage/SaltStorageFactory;->createStorage(Landroid/content/Context;II)Landroid/os/storage/SaltStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpPasswordService;->mSdpKeySaltStorages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public changePassword(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpPasswordService;->getSdpSaltStorage(I)Landroid/os/storage/SaltStorage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/SaltStorage;->getSalt()[B

    move-result-object v4

    invoke-static {p2, v4}, Landroid/os/dar/encryption/EncryptionAPI;->hash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "SDP.SdpPasswordService"

    const-string v5, "can\'t get hashed password"

    invoke-static {v4, v5}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Lcom/android/server/SecretZoo;

    invoke-direct {v2}, Lcom/android/server/SecretZoo;-><init>()V

    invoke-virtual {v2, p1, v0}, Lcom/android/server/SecretZoo;->confirmSecret(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/SdpPasswordService;->removePassword(I)Z

    invoke-virtual {p0, p1, p3}, Lcom/android/server/SdpPasswordService;->createPassword(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v4, "SDP.SdpPasswordService"

    const-string v5, "change password failed"

    invoke-static {v4, v5}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createPassword(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/SdpPasswordService;->getSdpSaltStorage(I)Landroid/os/storage/SaltStorage;

    move-result-object v1

    const/16 v3, 0x20

    invoke-static {v3}, Landroid/os/dar/encryption/EncryptionAPI;->generateSalt(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/storage/SaltStorage;->putSalt([B)Z

    invoke-virtual {v1}, Landroid/os/storage/SaltStorage;->getSalt()[B

    move-result-object v3

    invoke-static {p2, v3}, Landroid/os/dar/encryption/EncryptionAPI;->hash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/server/SecretZoo;

    invoke-direct {v2}, Lcom/android/server/SecretZoo;-><init>()V

    invoke-virtual {v2, p1, v0}, Lcom/android/server/SecretZoo;->createSecret(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SDP.SdpPasswordService"

    const-string v4, "can\'t create Secret"

    invoke-static {v3, v4}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/storage/SaltStorage;->delSalt()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getSdpSaltStorage(I)Landroid/os/storage/SaltStorage;
    .locals 2

    iget-object v1, p0, Lcom/android/server/SdpPasswordService;->mSdpKeySaltStorages:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpPasswordService;->getSdpSaltStorageLocked(I)Landroid/os/storage/SaltStorage;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashPassword(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpPasswordService;->getSdpSaltStorage(I)Landroid/os/storage/SaltStorage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/SaltStorage;->getSalt()[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "SDP.SdpPasswordService"

    const-string v5, "Failed to get SALT for hashing"

    invoke-static {v4, v5}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2, v1}, Landroid/os/dar/encryption/EncryptionAPI;->hash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/server/SecretZoo;

    invoke-direct {v2}, Lcom/android/server/SecretZoo;-><init>()V

    invoke-virtual {v2, p1, v0}, Lcom/android/server/SecretZoo;->confirmSecret(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SDP.SdpPasswordService"

    const-string v5, "hashPassword failed"

    invoke-static {v4, v5}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public removePassword(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/SecretZoo;

    invoke-direct {v0}, Lcom/android/server/SecretZoo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/server/SecretZoo;->forgetSecret(I)Z

    invoke-virtual {p0, p1}, Lcom/android/server/SdpPasswordService;->getSdpSaltStorage(I)Landroid/os/storage/SaltStorage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/SaltStorage;->delSalt()V

    const/4 v1, 0x1

    return v1
.end method
