.class Lcom/sec/android/app/camera/ShareShot$1;
.super Landroid/os/Handler;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShareShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ShareShot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/shareshot/User;

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->ackActivateUser(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onUnSelected()V

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->rejectActivateUser(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :sswitch_2
    const-string v2, "ShareShot"

    const-string v3, " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/ShareShot;->runDialog(Lcom/samsung/shareshot/User;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/ShareShot$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/ShareShot$1$1;-><init>(Lcom/sec/android/app/camera/ShareShot$1;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onShareModeSelect(I)V

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/ShareShot;->runComfirmedDialog(Lcom/samsung/shareshot/User;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1b -> :sswitch_1
        0x20 -> :sswitch_3
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
    .end sparse-switch
.end method
