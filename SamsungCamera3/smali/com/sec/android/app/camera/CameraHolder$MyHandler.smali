.class Lcom/sec/android/app/camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraHolder;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraHolder$MyHandler;->this$0:Lcom/sec/android/app/camera/CameraHolder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraHolder$MyHandler;->this$0:Lcom/sec/android/app/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder$MyHandler;->this$0:Lcom/sec/android/app/camera/CameraHolder;

    # getter for: Lcom/sec/android/app/camera/CameraHolder;->mUsers:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraHolder;->access$000(Lcom/sec/android/app/camera/CameraHolder;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder$MyHandler;->this$0:Lcom/sec/android/app/camera/CameraHolder;

    # invokes: Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraHolder;->access$100(Lcom/sec/android/app/camera/CameraHolder;)V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
