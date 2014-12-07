.class Lcom/sec/android/app/camera/Camera$VoiceRecognizer;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceRecognizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x82

    const/16 v6, 0x1b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "Camera3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceRecognition result string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCameraKeyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Camera3"

    const-string v2, "ignored voice recognition during capturing panorama"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v6, v4}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v6, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->isRecordingKeyEnabled()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v7, v4}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v7, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
