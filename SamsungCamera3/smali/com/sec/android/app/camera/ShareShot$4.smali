.class Lcom/sec/android/app/camera/ShareShot$4;
.super Ljava/lang/Object;
.source "ShareShot.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-static {p2}, Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ShareShot;->access$202(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    # getter for: Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v0}, Lcom/sec/android/app/camera/ShareShot;->access$200(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    # getter for: Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;
    invoke-static {v1}, Lcom/sec/android/app/camera/ShareShot;->access$300(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->registerCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    # getter for: Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v1}, Lcom/sec/android/app/camera/ShareShot;->access$200(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "ShareShot"

    const-string v2, ">>>>>>onServiceDisconnected>>>>so unregister call back"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    # getter for: Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v1}, Lcom/sec/android/app/camera/ShareShot;->access$200(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    # getter for: Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/ShareShot;->access$300(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$4;->this$0:Lcom/sec/android/app/camera/ShareShot;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ShareShot;->access$202(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
