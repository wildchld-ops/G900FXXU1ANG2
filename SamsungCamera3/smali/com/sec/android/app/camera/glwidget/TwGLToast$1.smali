.class Lcom/sec/android/app/camera/glwidget/TwGLToast$1;
.super Ljava/lang/Object;
.source "TwGLToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->hide()V

    return-void
.end method