.class public interface abstract Lcom/samsung/contacts/listener/InteractionCommonPickerListener;
.super Ljava/lang/Object;
.source "InteractionCommonPickerListener.java"


# virtual methods
.method public abstract onInteractionDoneButtonStateUpdated(Z)V
.end method

.method public abstract onInteractionSelectionChanged(II)V
.end method

.method public abstract onMultiInfoSelectionAction(Ljava/util/concurrent/ConcurrentHashMap;)V
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

.method public abstract onSingleSelectionAction(Landroid/net/Uri;)V
.end method
