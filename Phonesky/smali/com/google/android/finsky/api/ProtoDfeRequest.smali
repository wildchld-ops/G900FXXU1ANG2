.class public Lcom/google/android/finsky/api/ProtoDfeRequest;
.super Lcom/google/android/finsky/api/DfeRequest;
.source "ProtoDfeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Lcom/google/android/finsky/api/DfeRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mRequest:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/google/android/finsky/api/ProtoDfeRequest;->mRequest:Lcom/google/protobuf/nano/MessageNano;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->setShouldCache(Z)V

    return-void
.end method


# virtual methods
.method public getPostBody()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/ProtoDfeRequest;->mRequest:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/x-protobuf"

    return-object v0
.end method
