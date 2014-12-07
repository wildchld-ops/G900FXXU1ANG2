.class public Lcom/android/incallui/VoWifiStateTracker;
.super Ljava/lang/Object;
.source "VoWifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;
    }
.end annotation


# static fields
.field public static final WFC_REGISTRATION_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.oem.smartwifisupport.provider/wfc_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/VoWifiStateTracker;->WFC_REGISTRATION_URI:Landroid/net/Uri;

    return-void
.end method
