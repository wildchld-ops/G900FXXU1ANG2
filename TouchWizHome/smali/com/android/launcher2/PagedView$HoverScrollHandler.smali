.class Lcom/android/launcher2/PagedView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/PagedView;
    .param p2    # Lcom/android/launcher2/PagedView$1;

    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView$HoverScrollHandler;-><init>(Lcom/android/launcher2/PagedView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v4, 0x3

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    # getter for: Lcom/android/launcher2/PagedView;->mScrollByHover:Z
    invoke-static {v0}, Lcom/android/launcher2/PagedView;->access$600(Lcom/android/launcher2/PagedView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    # getter for: Lcom/android/launcher2/PagedView;->mHoverScrollDir:I
    invoke-static {v0}, Lcom/android/launcher2/PagedView;->access$700(Lcom/android/launcher2/PagedView;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    # getter for: Lcom/android/launcher2/PagedView;->mCurrentPage:I
    invoke-static {v1}, Lcom/android/launcher2/PagedView;->access$800(Lcom/android/launcher2/PagedView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    iget v2, v2, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    # getter for: Lcom/android/launcher2/PagedView;->mHoverScrollDir:I
    invoke-static {v0}, Lcom/android/launcher2/PagedView;->access$700(Lcom/android/launcher2/PagedView;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    # getter for: Lcom/android/launcher2/PagedView;->mCurrentPage:I
    invoke-static {v1}, Lcom/android/launcher2/PagedView;->access$800(Lcom/android/launcher2/PagedView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/PagedView$HoverScrollHandler;->this$0:Lcom/android/launcher2/PagedView;

    iget v2, v2, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
