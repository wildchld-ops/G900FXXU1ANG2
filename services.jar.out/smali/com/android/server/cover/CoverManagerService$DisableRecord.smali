.class Lcom/android/server/cover/CoverManagerService$DisableRecord;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableRecord"
.end annotation


# instance fields
.field disable:Z

.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;

.field token:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$DisableRecord;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cover/CoverManagerService$1;)V
    .locals 0
    .param p1    # Lcom/android/server/cover/CoverManagerService;
    .param p2    # Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService$DisableRecord;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$DisableRecord;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v1, v0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$DisableRecord;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService$DisableRecord;->pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/cover/CoverManagerService;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/cover/CoverManagerService;->access$1100(Lcom/android/server/cover/CoverManagerService;ZLandroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
