.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindGps"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V
    .locals 0
    .param p1    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p2    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1    # Landroid/location/Location;

    const-string v0, "LppLocationManager"

    const-string v1, "FindGps- onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_AVAILABLE:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/os/Bundle;

    return-void
.end method
