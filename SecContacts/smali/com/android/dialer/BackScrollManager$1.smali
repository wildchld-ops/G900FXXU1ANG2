.class Lcom/android/dialer/BackScrollManager$1;
.super Ljava/lang/Object;
.source "BackScrollManager.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/BackScrollManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/BackScrollManager;


# direct methods
.method constructor <init>(Lcom/android/dialer/BackScrollManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$000(Lcom/android/dialer/BackScrollManager;)Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    invoke-static {v5}, Lcom/android/dialer/BackScrollManager;->access$000(Lcom/android/dialer/BackScrollManager;)Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/dialer/BackScrollManager$ScrollableHeader;->getMaximumScrollableHeaderOffset()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/dialer/BackScrollManager$ScrollableHeader;->setOffset(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    neg-float v4, v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    invoke-static {v5}, Lcom/android/dialer/BackScrollManager;->access$000(Lcom/android/dialer/BackScrollManager;)Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/dialer/BackScrollManager$ScrollableHeader;->getMaximumScrollableHeaderOffset()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$000(Lcom/android/dialer/BackScrollManager;)Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/dialer/BackScrollManager$ScrollableHeader;->setOffset(I)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mIsSystemUIAppear:Z
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$100(Lcom/android/dialer/BackScrollManager;)Z

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # setter for: Lcom/android/dialer/BackScrollManager;->mIsSystemUIAppear:Z
    invoke-static {v4, v6}, Lcom/android/dialer/BackScrollManager;->access$102(Lcom/android/dialer/BackScrollManager;Z)Z

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mSystemUIBackgroundView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$300(Lcom/android/dialer/BackScrollManager;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v5}, Lcom/android/dialer/BackScrollManager;->access$200(Lcom/android/dialer/BackScrollManager;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mSystemUIBackgroundView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$300(Lcom/android/dialer/BackScrollManager;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mIsSystemUIAppear:Z
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$100(Lcom/android/dialer/BackScrollManager;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # setter for: Lcom/android/dialer/BackScrollManager;->mIsSystemUIAppear:Z
    invoke-static {v4, v7}, Lcom/android/dialer/BackScrollManager;->access$102(Lcom/android/dialer/BackScrollManager;Z)Z

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mSystemUIBackgroundView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$300(Lcom/android/dialer/BackScrollManager;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mAppearAnimation:Landroid/view/animation/Animation;
    invoke-static {v5}, Lcom/android/dialer/BackScrollManager;->access$400(Lcom/android/dialer/BackScrollManager;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mSystemUIBackgroundView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dialer/BackScrollManager;->access$300(Lcom/android/dialer/BackScrollManager;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    const-string v0, "CallDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged scrollState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # setter for: Lcom/android/dialer/BackScrollManager;->mScrollState:I
    invoke-static {v0, p2}, Lcom/android/dialer/BackScrollManager;->access$502(Lcom/android/dialer/BackScrollManager;I)I

    # getter for: Lcom/android/dialer/BackScrollManager;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {}, Lcom/android/dialer/BackScrollManager;->access$600()Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->setScrollState(I)V

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/dialer/BackScrollManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/BackScrollManager$1$1;-><init>(Lcom/android/dialer/BackScrollManager$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
