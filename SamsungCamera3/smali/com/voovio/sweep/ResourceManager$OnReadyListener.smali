.class public interface abstract Lcom/voovio/sweep/ResourceManager$OnReadyListener;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voovio/sweep/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnReadyListener"
.end annotation


# virtual methods
.method public abstract onTransitionReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Transition;)V
.end method

.method public abstract onVoovioReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Voovio;)V
.end method
