.class public Lorg/keyczar/interfaces/KeyType$KeyTypeSerializer;
.super Ljava/lang/Object;
.source "KeyType.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/interfaces/KeyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyTypeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lorg/keyczar/interfaces/KeyType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/reflect/Type;
    .param p3    # Lcom/google/gson/JsonSerializationContext;

    check-cast p1, Lorg/keyczar/interfaces/KeyType;

    invoke-virtual {p0, p1, p2, p3}, Lorg/keyczar/interfaces/KeyType$KeyTypeSerializer;->serialize(Lorg/keyczar/interfaces/KeyType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lorg/keyczar/interfaces/KeyType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1    # Lorg/keyczar/interfaces/KeyType;
    .param p2    # Ljava/lang/reflect/Type;
    .param p3    # Lcom/google/gson/JsonSerializationContext;

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-interface {p1}, Lorg/keyczar/interfaces/KeyType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
