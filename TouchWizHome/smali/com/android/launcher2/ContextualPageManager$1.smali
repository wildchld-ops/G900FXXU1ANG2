.class Lcom/android/launcher2/ContextualPageManager$1;
.super Landroid/database/ContentObserver;
.source "ContextualPageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ContextualPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ContextualPageManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ContextualPageManager;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$1;->this$0:Lcom/android/launcher2/ContextualPageManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$1;->this$0:Lcom/android/launcher2/ContextualPageManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(I)V

    return-void
.end method
