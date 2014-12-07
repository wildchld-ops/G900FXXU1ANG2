.class public Lcom/android/vending/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "932144863878"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->onGcmError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->onGcmMessage(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->onGcmRegistered(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->onGcmUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
