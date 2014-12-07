.class public Lcom/google/android/finsky/billing/BillingEventRecorder;
.super Ljava/lang/Object;
.source "BillingEventRecorder.java"


# static fields
.field private static final LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

.field private static final NOP_LISTENER:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/billing/BillingEventRecorder$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/BillingEventRecorder$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/BillingEventRecorder;->NOP_LISTENER:Lcom/android/volley/Response$Listener;

    new-instance v0, Lcom/google/android/finsky/billing/BillingEventRecorder$2;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/BillingEventRecorder$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/BillingEventRecorder;->LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method public static recordError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v2, Lcom/google/android/finsky/config/G;->logBillingEventsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    iput-object p0, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->billingParametersId:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId:Z

    iput p1, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->eventType:I

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->hasEventType:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->resultSuccess:Z

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess:Z

    iput-object p2, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->clientMessage:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/BillingEventRecorder;->NOP_LISTENER:Lcom/android/volley/Response$Listener;

    sget-object v3, Lcom/google/android/finsky/billing/BillingEventRecorder;->LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->recordBillingEvent(Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public static recordSuccess(Ljava/lang/String;IZ)V
    .locals 4

    const/4 v3, 0x1

    sget-object v2, Lcom/google/android/finsky/config/G;->logBillingEventsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    iput-object p0, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->billingParametersId:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId:Z

    iput p1, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->eventType:I

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->hasEventType:Z

    iput-boolean p2, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->resultSuccess:Z

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/billing/BillingEventRecorder;->NOP_LISTENER:Lcom/android/volley/Response$Listener;

    sget-object v3, Lcom/google/android/finsky/billing/BillingEventRecorder;->LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->recordBillingEvent(Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method
