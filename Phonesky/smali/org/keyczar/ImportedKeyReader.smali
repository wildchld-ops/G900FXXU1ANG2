.class public Lorg/keyczar/ImportedKeyReader;
.super Ljava/lang/Object;
.source "ImportedKeyReader.java"

# interfaces
.implements Lorg/keyczar/interfaces/KeyczarReader;


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/keyczar/KeyczarKey;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Lorg/keyczar/KeyMetadata;


# direct methods
.method constructor <init>(Lorg/keyczar/AesKey;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/keyczar/KeyMetadata;

    const-string v2, "Imported AES"

    sget-object v3, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    sget-object v4, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v1, v2, v3, v4}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    iput-object v1, p0, Lorg/keyczar/ImportedKeyReader;->metadata:Lorg/keyczar/KeyMetadata;

    new-instance v0, Lorg/keyczar/KeyVersion;

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    invoke-direct {v0, v5, v1, v5}, Lorg/keyczar/KeyVersion;-><init>(ILorg/keyczar/enums/KeyStatus;Z)V

    iget-object v1, p0, Lorg/keyczar/ImportedKeyReader;->metadata:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v1, v0}, Lorg/keyczar/KeyMetadata;->addVersion(Lorg/keyczar/KeyVersion;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/keyczar/ImportedKeyReader;->keys:Ljava/util/List;

    iget-object v1, p0, Lorg/keyczar/ImportedKeyReader;->keys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/ImportedKeyReader;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/ImportedKeyReader;->metadata:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
