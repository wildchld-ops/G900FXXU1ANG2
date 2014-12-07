.class public Lcom/google/android/finsky/utils/GetTocHelper;
.super Ljava/lang/Object;
.source "GetTocHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/GetTocHelper$Listener;
    }
.end annotation


# direct methods
.method static synthetic access$000(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/GetTocHelper;->doGetToc(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    return-void
.end method

.method static synthetic access$100(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/GetTocHelper;->doRequestToken(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    return-void
.end method

.method public static changedDeviceConfigToken(Lcom/google/android/finsky/api/DfeApi;)V
    .locals 0

    invoke-interface {p0}, Lcom/google/android/finsky/api/DfeApi;->invalidateTocCache()V

    return-void
.end method

.method private static doGetToc(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/utils/GetTocHelper$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/finsky/utils/GetTocHelper$3;-><init>(ZLcom/google/android/finsky/utils/GetTocHelper$Listener;Lcom/google/android/finsky/api/DfeApi;Z)V

    new-instance v2, Lcom/google/android/finsky/utils/GetTocHelper$4;

    invoke-direct {v2, p3}, Lcom/google/android/finsky/utils/GetTocHelper$4;-><init>(Lcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getToc(ZLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private static doRequestToken(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/GetTocHelper$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/finsky/utils/GetTocHelper$2;-><init>(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->requestToken(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;)V

    return-void
.end method

.method public static getToc(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->uploadIfNotRegistered(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;)V

    const/4 v1, 0x1

    invoke-static {v1, p0, p1, p2}, Lcom/google/android/finsky/utils/GetTocHelper;->doGetToc(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    return-void
.end method

.method public static getTocBlocking(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/protos/Toc$TocResponse;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/google/android/finsky/protos/Toc$TocResponse;

    new-instance v2, Lcom/google/android/finsky/utils/GetTocHelper$1;

    invoke-direct {v2, v0, v1}, Lcom/google/android/finsky/utils/GetTocHelper$1;-><init>([Lcom/google/android/finsky/protos/Toc$TocResponse;Ljava/util/concurrent/Semaphore;)V

    invoke-static {p0, v3, v2}, Lcom/google/android/finsky/utils/GetTocHelper;->getToc(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    aget-object v2, v0, v3

    return-object v2
.end method
