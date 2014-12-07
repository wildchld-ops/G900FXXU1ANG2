.class public Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningDownload"
.end annotation


# instance fields
.field public final contentUri:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    return-void
.end method
