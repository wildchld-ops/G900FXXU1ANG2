.class Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1$1;
.super Ljava/lang/Object;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    return-void
.end method
