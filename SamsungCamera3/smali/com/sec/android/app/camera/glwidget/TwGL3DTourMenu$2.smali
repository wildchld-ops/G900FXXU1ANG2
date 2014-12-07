.class Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;
.super Ljava/lang/Object;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    :cond_1
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
