.class Lcom/samsung/dialer/impl/DialerTutorialDialog$4;
.super Ljava/lang/Object;
.source "DialerTutorialDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/impl/DialerTutorialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    # getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->aniTime:I
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$1100(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    # getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$500(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    # getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$500(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    # getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$500(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    # getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$1200(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    # operator++ for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->aniTime:I
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$1108(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
