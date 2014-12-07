.class public Lcom/android/settings/SettingsEmergencySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SettingsEmergencySettings.java"


# instance fields
.field private mAirplaneModePreference:Landroid/preference/PreferenceScreen;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mBrightPreference:Lcom/android/settings/BrightnessPreference;

.field private mMobilePreference:Landroid/preference/PreferenceScreen;

.field private mTempPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/SettingsEmergencySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsEmergencySettings$1;-><init>(Lcom/android/settings/SettingsEmergencySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/SettingsEmergencySettings;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private resizeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # I

    const v6, 0x3f07ae14

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->addPreferencesFromResource(I)V

    const-string v0, "toggle_airplane"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModePreference:Landroid/preference/PreferenceScreen;

    const-string v0, "mobile_network_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f020252

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->resizeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "bluetooth_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f020216

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->resizeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneModePreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f020227

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->resizeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f020237

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->resizeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "location_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f020233

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->resizeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "sound_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f020246

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->resizeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BrightnessPreference;

    iput-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mBrightPreference:Lcom/android/settings/BrightnessPreference;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mBrightPreference:Lcom/android/settings/BrightnessPreference;

    const v1, 0x7f020217

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->resizeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v5, 0x1

    const-string v6, "mobile_network_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsEmergencySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne p2, v6, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    if-eqz v3, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090c19

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090c1a

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v5

    :cond_1
    const-string v6, "KDI"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsEmergencySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsEmergencySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsEmergencySettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
