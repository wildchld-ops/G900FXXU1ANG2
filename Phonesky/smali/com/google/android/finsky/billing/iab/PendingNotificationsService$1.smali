.class Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;
.super Ljava/lang/Object;
.source "PendingNotificationsService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->handleAlarm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;->this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;->this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->stopSelf()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$1;->onResponse(Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method
