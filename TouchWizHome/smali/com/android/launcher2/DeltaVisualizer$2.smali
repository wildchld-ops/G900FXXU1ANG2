.class Lcom/android/launcher2/DeltaVisualizer$2;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$2;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v11}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v8

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v11}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v4

    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v2, v11

    const/4 v11, 0x1

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v3, v11

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v11}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v11, 0x0

    aget v11, v4, v11

    int-to-float v11, v11

    mul-float v12, v2, v5

    add-float v9, v11, v12

    const/4 v11, 0x1

    aget v11, v4, v11

    int-to-float v11, v11

    mul-float v12, v3, v5

    add-float v10, v11, v12

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScaleX()F

    move-result v6

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;
    invoke-static {v11}, Lcom/android/launcher2/DeltaVisualizer;->access$300(Lcom/android/launcher2/DeltaVisualizer;)Lcom/android/launcher2/CellLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
