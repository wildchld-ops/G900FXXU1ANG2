.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    if-nez v13, :cond_1

    const-string v13, "Camera3"

    const-string v14, "onCompleted: mEngine is null"

    invoke-static {v13, v14}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    const-string v13, "quickview"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "reviewon"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_2
    const-string v13, "reviewon"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.BUDDY_PHOTO_SHARING"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "image/*"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "FACE_IMAGE_URI"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v13, "FACE_IMAGE_MODIFIED_DATE"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v14

    invoke-virtual {v6, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v13, "FACE_IMAGE_PATH"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CommonEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "FACE_IMAGE_SIZE"

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v15}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v6, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v13, "startApp"

    const-string v14, "camera"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13, v6}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_3
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v13, "com.sec.android.gallery3d"

    const-string v14, "com.sec.android.gallery3d.app.GalleryActivity"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "useUriList"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const-string v13, "uriListData"

    invoke-virtual {v6, v13, v12}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromCover:Z
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "createdByCovermode"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromLockScreen:Z
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    const-string v13, "createdByLockscreen"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    const-string v13, "from-Camera"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13, v6}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    const-string v13, "Camera3"

    const-string v14, "Gallery was disabled!!"

    invoke-static {v13, v14}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_9

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    :cond_a
    const-string v13, "from_app"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromSNote:Z
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v13

    if-eqz v13, :cond_c

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v13, "bitmap-data"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v13, "inline-data"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v14, 0x7d1

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15, v6}, Lcom/sec/android/app/camera/Camera;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v13, "fromApp"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7300(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_12

    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$7300(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v11, 0x0

    :try_start_2
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7300(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$7300(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CommonEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v8

    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v13, v8}, Lcom/sec/android/app/camera/Camera;->access$7402(Lcom/sec/android/app/camera/Camera;[B)[B

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7400(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7400(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/OutputStream;->write([B)V

    :cond_f
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7600(Lcom/sec/android/app/camera/Camera;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "skip-savediscard"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v9

    if-eqz v9, :cond_11

    const-string v13, "latitude"

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v10, v13, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v13, "longitude"

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v10, v13, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_11
    const-string v13, "takenTime"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v14}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v14

    invoke-virtual {v10, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v13, "com.sec.android.app.camera"

    const-string v14, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v1, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v14, 0x7d1

    invoke-virtual {v13, v1, v14}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v13

    invoke-static {v11}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v13

    invoke-static {v11}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mReturnUri:Z
    invoke-static {v13}, Lcom/sec/android/app/camera/Camera;->access$7500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v13

    if-eqz v13, :cond_13

    const-string v13, "return-uri"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_13
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :catch_2
    move-exception v13

    goto/16 :goto_1
.end method
