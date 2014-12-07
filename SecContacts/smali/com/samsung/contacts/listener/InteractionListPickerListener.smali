.class public interface abstract Lcom/samsung/contacts/listener/InteractionListPickerListener;
.super Ljava/lang/Object;
.source "InteractionListPickerListener.java"

# interfaces
.implements Lcom/samsung/contacts/listener/InteractionCommonPickerListener;


# virtual methods
.method public abstract onAllDataDeleted()V
.end method

.method public abstract onMultiVcardSelectionAction(Ljava/util/concurrent/ConcurrentHashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPickGroupAction(Ljava/util/concurrent/ConcurrentHashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRecentListAction(Landroid/content/Intent;)V
.end method

.method public abstract onSpeedDialSelectionAction(Landroid/net/Uri;J)V
.end method
