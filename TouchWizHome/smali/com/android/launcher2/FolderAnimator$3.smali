.class Lcom/android/launcher2/FolderAnimator$3;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$factorH:I

.field final synthetic val$factorW:I

.field final synthetic val$imgView:Landroid/widget/ImageView;

.field final synthetic val$itemHeight:I

.field final synthetic val$itemWidth:I

.field final synthetic val$loc:[I

.field final synthetic val$normalVisibleItems:I

.field final synthetic val$pos:I

.field final synthetic val$visibleItems:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Landroid/widget/ImageView;II[IIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iput p4, p0, Lcom/android/launcher2/FolderAnimator$3;->val$visibleItems:I

    iput-object p5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$loc:[I

    iput p6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$itemWidth:I

    iput p7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$itemHeight:I

    iput p8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$factorW:I

    iput p9, p0, Lcom/android/launcher2/FolderAnimator$3;->val$factorH:I

    iput p10, p0, Lcom/android/launcher2/FolderAnimator$3;->val$normalVisibleItems:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/AppIconView;

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$200(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    const/4 v6, 0x0

    # setter for: Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z
    invoke-static {v5, v6}, Lcom/android/launcher2/FolderAnimator;->access$302(Lcom/android/launcher2/FolderAnimator;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    const/4 v6, 0x0

    # invokes: Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I
    invoke-static {v5, v2, v6}, Lcom/android/launcher2/FolderAnimator;->access$400(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)[I

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # setter for: Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I
    invoke-static {v5, v4}, Lcom/android/launcher2/FolderAnimator;->access$502(Lcom/android/launcher2/FolderAnimator;[I)[I

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    # setter for: Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I
    invoke-static {v5, v6}, Lcom/android/launcher2/FolderAnimator;->access$602(Lcom/android/launcher2/FolderAnimator;I)I

    :cond_2
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    const/4 v6, 0x5

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz v4, :cond_0

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$visibleItems:I

    if-le v5, v6, :cond_4

    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$visibleItems:I

    if-gt v5, v6, :cond_5

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$normalVisibleItems:I

    if-lt v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$700(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/Folder;->mExpandDuration:I

    mul-int/lit8 v7, v3, 0xa

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/FolderAnimator$3$1;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher2/FolderAnimator$3$1;-><init>(Lcom/android/launcher2/FolderAnimator$3;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$loc:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x0

    aget v6, v4, v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$itemWidth:I

    div-int v0, v5, v6

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$loc:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    aget v6, v4, v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$itemHeight:I

    div-int v1, v5, v6

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$factorW:I

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$factorH:I

    add-int/2addr v5, v6

    add-int v6, v0, v1

    sub-int v3, v5, v6

    mul-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$700(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/Folder;->mExpandDuration:I

    mul-int/lit8 v7, v3, 0xf

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method
