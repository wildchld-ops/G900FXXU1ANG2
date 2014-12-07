.class Lcom/sec/android/app/camera/Camera$2;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x5

    const/16 v7, 0x1a

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v2, "Camera3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage :: msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    const-string v2, "Camera3"

    const-string v3, "processBack. FILE_SAVING_PROGRESS_BACK"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    :cond_1
    const-string v2, "Camera3"

    const-string v3, "START_VOICE_RECOGNIZER"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v2, "Camera3"

    const-string v3, "Inactivity timer is expired. finish."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    :pswitch_4
    const-string v2, "Camera3"

    const-string v3, "Overheat popup timer is expired. finish."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    # getter for: Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$500()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # ++operator for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$604(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    # getter for: Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$500()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/Camera;->access$602(Lcom/sec/android/app/camera/Camera;I)I

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartTouchAF()V

    goto/16 :goto_0

    :pswitch_8
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->stopAFHideRectTimer()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->setHalfShutter(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$900()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->startSingleBurstShot()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mRecordingStopAvailable:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/Camera;->access$1002(Lcom/sec/android/app/camera/Camera;Z)Z

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideFocusRect()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->stopAFHideRectTimer()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v2

    if-ne v2, v6, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->stopGolfShotDetectingTimer()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->initIntentFilter()V
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBurstShotStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v7, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isNeedUpdate()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1202(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0b028b

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1202(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v7, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mFirmwareCheckToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1202(Lcom/sec/android/app/camera/Camera;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v7, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v3, "reviewon"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setFlashOffInHighTemperature()V
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # ++operator for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1404(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/display/DisplayManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayBridgeStatus()I

    move-result v3

    # setter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$1502(Lcom/sec/android/app/camera/Camera;I)I

    const-string v2, "Camera3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiDisplayBridgeStatusCheckCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Camera3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckWifiDisplayBridgeStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCheckWifiDisplayBridgeStatus:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->enableWifiDisplay()V
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/Camera;->access$1402(Lcom/sec/android/app/camera/Camera;I)I

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera$2;->removeMessages(I)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->enableWifiDisplay()V
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mWifiDisplayBridgeStatusCheckCount:I
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/Camera;->access$1402(Lcom/sec/android/app/camera/Camera;I)I

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera$2;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_13
    :try_start_1
    const-string v2, "Camera3"

    const-string v3, "Update thumbnail"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Camera3"

    const-string v3, "Not enough space in database"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b018c

    invoke-static {v2, v3, v8}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isOverHeated()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->handleDeviceOverheat()V

    goto/16 :goto_0

    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v9}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->closeCoverCamera()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Camera3"

    const-string v3, "retry closeCoverCamera"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setStepHide()V

    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    :pswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$900()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0b02eb

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b015c

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->startSideBezelTouchIconAnimation()V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->stopSideBezelTouchIconAnimation()V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    const-wide/16 v4, 0xaf0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->refreshShootingModesList()V
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->validateShootingModeExistence()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_c
        :pswitch_1
        :pswitch_16
        :pswitch_2
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method
