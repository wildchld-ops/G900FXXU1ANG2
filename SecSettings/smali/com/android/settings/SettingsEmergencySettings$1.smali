.class Lcom/android/settings/SettingsEmergencySettings$1;
.super Landroid/database/ContentObserver;
.source "SettingsEmergencySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    # getter for: Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/SettingsEmergencySettings;->access$000(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    # getter for: Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/SettingsEmergencySettings;->access$000(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
