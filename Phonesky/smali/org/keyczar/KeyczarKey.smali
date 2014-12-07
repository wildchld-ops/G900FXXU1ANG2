.class public abstract Lorg/keyczar/KeyczarKey;
.super Ljava/lang/Object;
.source "KeyczarKey.java"


# instance fields
.field final size:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/keyczar/KeyczarKey;->size:I

    return-void
.end method

.method static readKey(Lorg/keyczar/interfaces/KeyType;Ljava/lang/String;)Lorg/keyczar/KeyczarKey;
    .locals 1
    .param p0    # Lorg/keyczar/interfaces/KeyType;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/keyczar/interfaces/KeyType;->getBuilder()Lorg/keyczar/interfaces/KeyType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/KeyType$Builder;->read(Ljava/lang/String;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method copyHeader(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/keyczar/KeyczarKey;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected abstract getStream()Lorg/keyczar/interfaces/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation
.end method

.method protected abstract hash()[B
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->toInt([B)I

    move-result v0

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
