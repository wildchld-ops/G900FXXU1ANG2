.class public Lcom/google/android/finsky/utils/CachedLocationAccess;
.super Ljava/lang/Object;
.source "CachedLocationAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachedLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 5

    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
