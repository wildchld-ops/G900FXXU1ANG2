.class public Lorg/keyczar/KeyMetadata;
.super Ljava/lang/Object;
.source "KeyMetadata.java"


# instance fields
.field encrypted:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field purpose:Lorg/keyczar/enums/KeyPurpose;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field type:Lorg/keyczar/interfaces/KeyType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected versionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/keyczar/KeyVersion;",
            ">;"
        }
    .end annotation
.end field

.field versions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/keyczar/KeyVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->name:Ljava/lang/String;

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->purpose:Lorg/keyczar/enums/KeyPurpose;

    sget-object v0, Lorg/keyczar/DefaultKeyType;->TEST:Lorg/keyczar/DefaultKeyType;

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->type:Lorg/keyczar/interfaces/KeyType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->versions:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/keyczar/KeyMetadata;->encrypted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->versionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lorg/keyczar/enums/KeyPurpose;
    .param p3    # Lorg/keyczar/interfaces/KeyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->name:Ljava/lang/String;

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->purpose:Lorg/keyczar/enums/KeyPurpose;

    sget-object v0, Lorg/keyczar/DefaultKeyType;->TEST:Lorg/keyczar/DefaultKeyType;

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->type:Lorg/keyczar/interfaces/KeyType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->versions:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/keyczar/KeyMetadata;->encrypted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/keyczar/KeyMetadata;->versionMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/keyczar/KeyMetadata;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/keyczar/KeyMetadata;->purpose:Lorg/keyczar/enums/KeyPurpose;

    iput-object p3, p0, Lorg/keyczar/KeyMetadata;->type:Lorg/keyczar/interfaces/KeyType;

    return-void
.end method

.method public static read(Ljava/lang/String;)Lorg/keyczar/KeyMetadata;
    .locals 5
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lorg/keyczar/KeyMetadata;

    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/keyczar/KeyMetadata;

    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getVersions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/keyczar/KeyVersion;

    iget-object v3, v1, Lorg/keyczar/KeyMetadata;->versionMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addVersion(Lorg/keyczar/KeyVersion;)Z
    .locals 3
    .param p1    # Lorg/keyczar/KeyVersion;

    invoke-virtual {p1}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v0

    iget-object v1, p0, Lorg/keyczar/KeyMetadata;->versionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/keyczar/KeyMetadata;->versionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/keyczar/KeyMetadata;->versions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPurpose()Lorg/keyczar/enums/KeyPurpose;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/KeyMetadata;->purpose:Lorg/keyczar/enums/KeyPurpose;

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/KeyMetadata;->type:Lorg/keyczar/interfaces/KeyType;

    return-object v0
.end method

.method public getVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/keyczar/KeyVersion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/keyczar/KeyMetadata;->versions:Ljava/util/List;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/keyczar/KeyMetadata;->encrypted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
