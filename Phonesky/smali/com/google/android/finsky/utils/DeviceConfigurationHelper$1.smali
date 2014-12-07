.class final Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->doUploadDeviceConfiguration(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$gcmRegistrationId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

.field final synthetic val$request:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/protos/DeviceConfigurationProto;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$gcmRegistrationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    iput-object p3, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    iput-object p5, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$request:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$gcmRegistrationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$gcmRegistrationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->setRegisteredOnServer(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->uploadDeviceConfigToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p1, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;->uploadDeviceConfigToken:Ljava/lang/String;

    const-string v1, "Received device config token %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->deviceConfigToken:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {v1}, Lcom/google/android/finsky/utils/GetTocHelper;->changedDeviceConfigToken(Lcom/google/android/finsky/api/DfeApi;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    invoke-interface {v1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;->onSuccess()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$request:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;

    # invokes: Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->doNextRequest(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V
    invoke-static {v1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->access$000(Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;)V

    return-void

    :cond_2
    const-string v1, "Unexpected - missing UploadDeviceConfigToken"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->val$listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    new-instance v2, Lcom/android/volley/ServerError;

    invoke-direct {v2}, Lcom/android/volley/ServerError;-><init>()V

    invoke-interface {v1, v2}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;->onError(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;->onResponse(Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;)V

    return-void
.end method
