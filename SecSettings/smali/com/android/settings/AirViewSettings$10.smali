.class Lcom/android/settings/AirViewSettings$10;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showAirCommoandDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    # invokes: Lcom/android/settings/AirViewSettings;->updateAirviewSwitch()V
    invoke-static {v1}, Lcom/android/settings/AirViewSettings;->access$600(Lcom/android/settings/AirViewSettings;)V

    iget-object v1, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    # getter for: Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/AirViewSettings;->access$000(Lcom/android/settings/AirViewSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_view_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AirViewSettings$10;->this$0:Lcom/android/settings/AirViewSettings;

    # getter for: Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/AirViewSettings;->access$900(Lcom/android/settings/AirViewSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    return-void
.end method
