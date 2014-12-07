.class public interface abstract Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;
.super Ljava/lang/Object;
.source "PlayCardWindowLifecycleTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CardLifecycleListener"
.end annotation


# virtual methods
.method public abstract onCardAttachedToWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
.end method

.method public abstract onCardDetachedFromWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
.end method
