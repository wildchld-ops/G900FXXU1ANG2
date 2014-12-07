.class final Lcom/google/android/finsky/utils/GetTocHelper$2;
.super Ljava/lang/Object;
.source "GetTocHelper.java"

# interfaces
.implements Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/GetTocHelper;->doRequestToken(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$allowDouble:Z

.field final synthetic val$allowRetry:Z

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# direct methods
.method constructor <init>(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$allowRetry:Z

    iput-object p2, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-boolean p3, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$allowDouble:Z

    iput-object p4, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1    # Lcom/android/volley/VolleyError;

    const-string v0, "Upload device configuration failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/utils/GetTocHelper$Listener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$allowRetry:Z

    iget-object v1, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-boolean v2, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$allowDouble:Z

    iget-object v3, p0, Lcom/google/android/finsky/utils/GetTocHelper$2;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    # invokes: Lcom/google/android/finsky/utils/GetTocHelper;->doGetToc(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/GetTocHelper;->access$000(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    return-void
.end method
