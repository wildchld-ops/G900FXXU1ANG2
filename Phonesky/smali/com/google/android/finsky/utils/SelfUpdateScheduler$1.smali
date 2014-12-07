.class Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/SelfUpdateScheduler;->checkForSelfUpdate(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
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
        "Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget v2, p1, Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;->status:I

    if-eq v2, v4, :cond_0

    const-string v3, "SelfUpdate non-OK response - %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p1, Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-nez v3, :cond_1

    const-string v3, "SelfUpdate response missing appDeliveryData"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iget-object v3, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    aget-object v0, v3, v6

    iget-object v3, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    iget-object v4, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->name:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->value:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->startSelfUpdateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$000(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;->onResponse(Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;)V

    return-void
.end method
