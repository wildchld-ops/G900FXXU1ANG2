.class Lcom/android/launcher2/ContextualPageManager$4;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ContextualPageManager;

.field final synthetic val$CPType:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/ContextualPageManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iput p2, p0, Lcom/android/launcher2/ContextualPageManager$4;->val$CPType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager$4;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iget v3, p0, Lcom/android/launcher2/ContextualPageManager$4;->val$CPType:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v2

    # invokes: Lcom/android/launcher2/ContextualPageManager;->moveToScreen(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ContextualPageManager;->access$100(Lcom/android/launcher2/ContextualPageManager;ZI)V

    return-void
.end method
