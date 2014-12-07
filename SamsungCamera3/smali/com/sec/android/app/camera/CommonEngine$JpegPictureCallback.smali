.class final Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field private mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 6
    .param p1    # [B
    .param p2    # Lcom/sec/android/seccamera/SecCamera;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "CommonEngine"

    const-string v1, "JpegPictureCallback.onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-TakePicture**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    # invokes: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    invoke-static {v0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$2000(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoShotLowLight()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAutoShotNight(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isDualCaptureModeAsyncFirstCapturing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDualCaptureModeAsyncInit()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getTouchtoCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->setTouchtoCaptureStarted(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setLocation(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1    # Landroid/location/Location;

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method
