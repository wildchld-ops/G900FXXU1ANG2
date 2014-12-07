.class Lcom/android/launcher2/HomeView$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->changeHotseatIcons(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$CurCPType:I

.field final synthetic val$hotseatView:Ljava/util/ArrayList;

.field final synthetic val$isCurCP:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;IZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$25;->this$0:Lcom/android/launcher2/HomeView;

    iput p2, p0, Lcom/android/launcher2/HomeView$25;->val$CurCPType:I

    iput-boolean p3, p0, Lcom/android/launcher2/HomeView$25;->val$isCurCP:Z

    iput-object p4, p0, Lcom/android/launcher2/HomeView$25;->val$hotseatView:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Launcher.HomeView"

    const-string v3, "[CP] needToChange, but animation canceled!! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeView$25;->this$0:Lcom/android/launcher2/HomeView;

    iget v3, p0, Lcom/android/launcher2/HomeView$25;->val$CurCPType:I

    iget-boolean v4, p0, Lcom/android/launcher2/HomeView$25;->val$isCurCP:Z

    # invokes: Lcom/android/launcher2/HomeView;->changeHotseatIconContainer(IZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;IZZ)V

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView$25;->val$hotseatView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/HomeView$25;->this$0:Lcom/android/launcher2/HomeView;

    iget v3, p0, Lcom/android/launcher2/HomeView$25;->val$CurCPType:I

    iget-boolean v4, p0, Lcom/android/launcher2/HomeView$25;->val$isCurCP:Z

    const/4 v5, 0x1

    # invokes: Lcom/android/launcher2/HomeView;->changeHotseatIconContainer(IZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;IZZ)V

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView$25;->val$hotseatView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
