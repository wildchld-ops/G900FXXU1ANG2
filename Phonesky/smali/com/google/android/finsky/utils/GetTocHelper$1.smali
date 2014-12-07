.class final Lcom/google/android/finsky/utils/GetTocHelper$1;
.super Ljava/lang/Object;
.source "GetTocHelper.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/GetTocHelper;->getTocBlocking(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/protos/Toc$TocResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:[Lcom/google/android/finsky/protos/Toc$TocResponse;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>([Lcom/google/android/finsky/protos/Toc$TocResponse;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/GetTocHelper$1;->val$result:[Lcom/google/android/finsky/protos/Toc$TocResponse;

    iput-object p2, p0, Lcom/google/android/finsky/utils/GetTocHelper$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$1;->val$result:[Lcom/google/android/finsky/protos/Toc$TocResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$1;->val$result:[Lcom/google/android/finsky/protos/Toc$TocResponse;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
