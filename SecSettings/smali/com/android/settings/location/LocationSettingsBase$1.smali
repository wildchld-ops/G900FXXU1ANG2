.class Lcom/android/settings/location/LocationSettingsBase$1;
.super Ljava/lang/Object;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettingsBase;->showUSCLocationConsentDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettingsBase$1;->this$0:Lcom/android/settings/location/LocationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    return-void
.end method
