.class final Lcom/android/launcher2/ContextualPageReceiver$1;
.super Landroid/database/ContentObserver;
.source "ContextualPageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ContextualPageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$000()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$100()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ContextualPageManager;->removeAllContextualPage()V

    goto :goto_0
.end method
