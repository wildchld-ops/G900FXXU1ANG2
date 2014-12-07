.class Lcom/android/launcher2/FolderAnimator$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/FolderAnimator$3;

.field final synthetic val$iconView:Lcom/android/launcher2/AppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator$3;Lcom/android/launcher2/AppIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$3$1;->val$iconView:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1    # Landroid/animation/Animator;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v0, v0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v1, v1, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v0, v0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$200(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v1, v1, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->val$iconView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget v0, v0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget v1, v1, Lcom/android/launcher2/FolderAnimator$3;->val$visibleItems:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->val$iconView:Lcom/android/launcher2/AppIconView;

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    const-wide/16 v3, 0x5a

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v0, v0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # setter for: Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z
    invoke-static {v0, v5}, Lcom/android/launcher2/FolderAnimator;->access$302(Lcom/android/launcher2/FolderAnimator;Z)Z

    return-void
.end method
