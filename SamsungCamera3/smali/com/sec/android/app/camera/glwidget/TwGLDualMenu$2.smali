.class Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;
.super Ljava/lang/Object;
.source "TwGLDualMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerDragChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$onGLHandlerDragChangedListener;->onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)V

    :cond_0
    return-void
.end method

.method public onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$onGLHandlerDragChangedListener;->onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)V

    :cond_0
    return-void
.end method
