.class public Lcom/sec/android/app/camera/DirectShareService$SendInfo;
.super Ljava/lang/Object;
.source "DirectShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DirectShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendInfo"
.end annotation


# instance fields
.field public mReceiverList:Ljava/lang/String;

.field public mRequestId:I

.field public mTransferState:Z

.field public mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/DirectShareService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/DirectShareService;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mRequestId:I

    iput-object p3, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mType:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mTransferState:Z

    iput-object p5, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mReceiverList:Ljava/lang/String;

    return-void
.end method
