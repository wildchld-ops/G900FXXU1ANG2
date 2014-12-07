.class final Lcom/google/android/play/analytics/EventLogger$2;
.super Landroid/os/HandlerThread;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/analytics/EventLogger;->startHandlerThread()Landroid/os/HandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iput-object p3, p0, Lcom/google/android/play/analytics/EventLogger$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/analytics/EventLogger$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
