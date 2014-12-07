.class final Lcom/google/android/finsky/services/ContentSyncService$2;
.super Ljava/lang/Object;
.source "ContentSyncService.java"

# interfaces
.implements Lcom/google/android/finsky/services/ContentSyncService$Facade;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scheduleSync()V
    .locals 0

    # invokes: Lcom/google/android/finsky/services/ContentSyncService;->scheduleReplication()V
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->access$200()V

    return-void
.end method
