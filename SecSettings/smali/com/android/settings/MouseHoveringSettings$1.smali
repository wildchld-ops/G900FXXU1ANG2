.class Lcom/android/settings/MouseHoveringSettings$1;
.super Landroid/database/ContentObserver;
.source "MouseHoveringSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MouseHoveringSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MouseHoveringSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MouseHoveringSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MouseHoveringSettings$1;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings$1;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mouse_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings$1;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/MouseHoveringSettings;->access$000(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings$1;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/MouseHoveringSettings;->access$100(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings$1;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/MouseHoveringSettings;->access$200(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings$1;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/MouseHoveringSettings;->access$300(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings$1;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/MouseHoveringSettings;->access$400(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
