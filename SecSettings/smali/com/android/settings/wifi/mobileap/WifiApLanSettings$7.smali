.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1502(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DHCP_CHANGE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput-boolean v4, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
