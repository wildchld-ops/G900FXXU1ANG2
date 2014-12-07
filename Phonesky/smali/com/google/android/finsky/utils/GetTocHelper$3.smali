.class final Lcom/google/android/finsky/utils/GetTocHelper$3;
.super Ljava/lang/Object;
.source "GetTocHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/GetTocHelper;->doGetToc(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
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
        "Lcom/google/android/finsky/protos/Toc$TocResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allowDouble:Z

.field final synthetic val$allowRetry:Z

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# direct methods
.method constructor <init>(ZLcom/google/android/finsky/utils/GetTocHelper$Listener;Lcom/google/android/finsky/api/DfeApi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$allowRetry:Z

    iput-object p2, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    iput-object p3, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-boolean p4, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$allowDouble:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->requiresUploadDeviceConfig:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/utils/GetTocHelper$Listener;->onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Server requests device config token"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->invalidateToken()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {v0}, Lcom/google/android/finsky/utils/GetTocHelper;->changedDeviceConfigToken(Lcom/google/android/finsky/api/DfeApi;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$allowRetry:Z

    if-nez v0, :cond_1

    const-string v0, "Failed to converge on device config for TOC"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    new-instance v1, Lcom/android/volley/ServerError;

    invoke-direct {v1}, Lcom/android/volley/ServerError;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/GetTocHelper$Listener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-boolean v1, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$allowDouble:Z

    iget-object v2, p0, Lcom/google/android/finsky/utils/GetTocHelper$3;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    # invokes: Lcom/google/android/finsky/utils/GetTocHelper;->doRequestToken(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    invoke-static {v3, v0, v1, v2}, Lcom/google/android/finsky/utils/GetTocHelper;->access$100(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/GetTocHelper$3;->onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    return-void
.end method
