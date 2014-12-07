.class Lcom/sec/android/app/camera/CommonEngine$10;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doTakeVideoSnapShotAsync()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 3

    const-string v1, "CommonEngine"

    const-string v2, "Jpeg Image callback"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$10$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/CommonEngine$10$1;-><init>(Lcom/sec/android/app/camera/CommonEngine$10;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "startsaveimage"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
