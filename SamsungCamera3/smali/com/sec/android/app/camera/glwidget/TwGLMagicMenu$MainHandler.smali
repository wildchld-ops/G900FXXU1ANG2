.class Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$MainHandler;
.super Landroid/os/Handler;
.source "TwGLMagicMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->reset(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_IDLE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setMagicShotState(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
