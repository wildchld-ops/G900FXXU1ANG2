.class final Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->doUploadDeviceConfiguration(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

.field final synthetic val$request:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    iput-object p2, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$request:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1    # Lcom/android/volley/VolleyError;

    const-string v0, "Couldn\'t upload device config"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;->onError(Lcom/android/volley/VolleyError;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;->val$request:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    # invokes: Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->doNextRequest(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
    invoke-static {v0}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->access$000(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V

    return-void
.end method
