.class Lcom/sec/android/app/camera/Camera$52;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.directconnect"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.sec.android.directconnect"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->initNfcState()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showRemoteViewfinderNfcConnectScreen()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$52;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    goto :goto_0
.end method
