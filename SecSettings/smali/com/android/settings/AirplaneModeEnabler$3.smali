.class Lcom/android/settings/AirplaneModeEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirplaneModeEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    iput-boolean p2, p0, Lcom/android/settings/AirplaneModeEnabler$3;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->val$value:Z

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    # getter for: Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->access$200(Lcom/android/settings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeEnabler$3;->val$value:Z

    # invokes: Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AirplaneModeEnabler;->access$300(Lcom/android/settings/AirplaneModeEnabler;Z)V

    :cond_0
    return-void
.end method
