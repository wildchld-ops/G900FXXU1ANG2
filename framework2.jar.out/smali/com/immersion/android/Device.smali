.class public Lcom/immersion/android/Device;
.super Lcom/immersion/Device;
.source "Device.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/Device;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/immersion/Device;->close()V

    :cond_0
    return-void
.end method

.method protected newEffectHandle(II)Lcom/immersion/EffectHandle;
    .locals 1

    new-instance v0, Lcom/immersion/android/EffectHandle;

    invoke-direct {v0, p1, p2}, Lcom/immersion/android/EffectHandle;-><init>(II)V

    return-object v0
.end method
