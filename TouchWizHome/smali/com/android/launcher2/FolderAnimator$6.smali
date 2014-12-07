.class Lcom/android/launcher2/FolderAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->animateClose(Lcom/android/launcher2/DragState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$6;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$700(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher2/FolderIconView;->mHasBounceItem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    # -= operator for: Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I
    invoke-static {v0, v2}, Lcom/android/launcher2/FolderAnimator;->access$1020(Lcom/android/launcher2/FolderAnimator;I)I

    return-void
.end method
