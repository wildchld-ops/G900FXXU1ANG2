.class Lcom/sec/android/app/camera/CommonEngine$8;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v5, 0x0

    const/4 v2, -0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$3700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CommonEngine"

    const-string v1, "SecMediaRecorder is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$3802(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->disableAlertSound()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$3700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$3700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->registerRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->setSystemSoundEffect()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$3900(Lcom/sec/android/app/camera/CommonEngine;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getSystemSoundEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disableSystemSoundEffect()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/camera/CommonEngine;->access$4000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/ContextProviderUtils;->getRecordVideoSet(Ljava/lang/String;IILandroid/net/Uri;Ljava/lang/String;IJ)Landroid/os/Bundle;

    move-result-object v9

    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v0, "CommonEngine"

    const-string v1, "Could not start media recorder. "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingFailByVideoController()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$8;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
