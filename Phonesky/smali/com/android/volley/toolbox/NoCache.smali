.class public Lcom/android/volley/toolbox/NoCache;
.super Ljava/lang/Object;
.source "NoCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/volley/Cache$Entry;

    return-void
.end method
