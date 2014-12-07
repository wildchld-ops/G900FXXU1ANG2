.class Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;
.super Ljava/lang/Object;
.source "TwGLBurstMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->DBUpdatebyThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    const-string v3, "TwGLBurstMenu"

    const-string v4, "db insert E"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const-string v3, "TwGLBurstMenu"

    const-string v4, "db insert X"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->lastImageUpdate(Landroid/content/ContentValues;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$502(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "TwGLBurstMenu"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0b018c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
