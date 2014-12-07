.class Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/DeviceConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestRecord"
.end annotation


# instance fields
.field public final dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field public final gcmOnly:Z

.field public final listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # Z
    .param p3    # Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;->dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-boolean p2, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;->gcmOnly:Z

    iput-object p3, p0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$RequestRecord;->listener:Lcom/google/android/finsky/utils/DeviceConfigurationHelper$Listener;

    return-void
.end method
