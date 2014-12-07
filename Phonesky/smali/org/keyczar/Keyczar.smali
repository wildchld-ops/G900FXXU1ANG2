.class public abstract Lorg/keyczar/Keyczar;
.super Ljava/lang/Object;
.source "Keyczar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/Keyczar$1;,
        Lorg/keyczar/Keyczar$KeyHash;
    }
.end annotation


# static fields
.field public static final FORMAT_BYTES:[B

.field private static final LOG:Lorg/apache/log4j/Logger;


# instance fields
.field final hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/keyczar/Keyczar$KeyHash;",
            "Lorg/keyczar/KeyczarKey;",
            ">;"
        }
    .end annotation
.end field

.field final kmd:Lorg/keyczar/KeyMetadata;

.field primaryVersion:Lorg/keyczar/KeyVersion;

.field final versionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/keyczar/KeyVersion;",
            "Lorg/keyczar/KeyczarKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lorg/keyczar/Keyczar;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/keyczar/Keyczar;->LOG:Lorg/apache/log4j/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lorg/keyczar/Keyczar;->FORMAT_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 9
    .param p1    # Lorg/keyczar/interfaces/KeyczarReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/keyczar/Keyczar;->versionMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/keyczar/Keyczar;->hashMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/keyczar/interfaces/KeyczarReader;->getMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/keyczar/KeyMetadata;->read(Ljava/lang/String;)Lorg/keyczar/KeyMetadata;

    move-result-object v3

    iput-object v3, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    iget-object v3, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/keyczar/Keyczar;->isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/keyczar/exceptions/KeyczarException;

    const-string v4, "Keyczar.UnacceptablePurpose"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v6}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p1, Lorg/keyczar/interfaces/EncryptedReader;

    if-nez v3, :cond_1

    new-instance v3, Lorg/keyczar/exceptions/KeyczarException;

    const-string v4, "Keyczar.NeedEncryptedReader"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getVersions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/keyczar/KeyVersion;

    invoke-virtual {v2}, Lorg/keyczar/KeyVersion;->getStatus()Lorg/keyczar/enums/KeyStatus;

    move-result-object v3

    sget-object v4, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    if-eqz v3, :cond_2

    new-instance v3, Lorg/keyczar/exceptions/KeyczarException;

    const-string v4, "Keyczar.SinglePrimary"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iput-object v2, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    :cond_3
    iget-object v3, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/keyczar/interfaces/KeyczarReader;->getKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/keyczar/KeyczarKey;->readKey(Lorg/keyczar/interfaces/KeyType;Ljava/lang/String;)Lorg/keyczar/KeyczarKey;

    move-result-object v1

    sget-object v3, Lorg/keyczar/Keyczar;->LOG:Lorg/apache/log4j/Logger;

    const-string v4, "Keyczar.ReadVersion"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/keyczar/Keyczar;->hashMap:Ljava/util/HashMap;

    new-instance v4, Lorg/keyczar/Keyczar$KeyHash;

    invoke-virtual {v1}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lorg/keyczar/Keyczar$KeyHash;-><init>(Lorg/keyczar/Keyczar;[BLorg/keyczar/Keyczar$1;)V

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/keyczar/Keyczar;->versionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method getKey([B)Lorg/keyczar/KeyczarKey;
    .locals 3
    .param p1    # [B

    iget-object v0, p0, Lorg/keyczar/Keyczar;->hashMap:Ljava/util/HashMap;

    new-instance v1, Lorg/keyczar/Keyczar$KeyHash;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/keyczar/Keyczar$KeyHash;-><init>(Lorg/keyczar/Keyczar;[BLorg/keyczar/Keyczar$1;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    return-object v0
.end method

.method getPrimaryKey()Lorg/keyczar/KeyczarKey;
    .locals 2

    iget-object v0, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/keyczar/Keyczar;->versionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    goto :goto_0
.end method

.method abstract isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
