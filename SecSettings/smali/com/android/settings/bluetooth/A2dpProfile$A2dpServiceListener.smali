.class final Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/A2dpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/A2dpProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/A2dpProfile;Lcom/android/settings/bluetooth/A2dpProfile$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/bluetooth/A2dpProfile;
    .param p2    # Lcom/android/settings/bluetooth/A2dpProfile$1;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settings/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1    # I
    .param p2    # Landroid/bluetooth/BluetoothProfile;

    # getter for: Lcom/android/settings/bluetooth/A2dpProfile;->V:Z
    invoke-static {}, Lcom/android/settings/bluetooth/A2dpProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "A2dpProfile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    # setter for: Lcom/android/settings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v3, p2}, Lcom/android/settings/bluetooth/A2dpProfile;->access$102(Lcom/android/settings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    # getter for: Lcom/android/settings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v3}, Lcom/android/settings/bluetooth/A2dpProfile;->access$100(Lcom/android/settings/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    # getter for: Lcom/android/settings/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/A2dpProfile;->access$200(Lcom/android/settings/bluetooth/A2dpProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "A2dpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A2dpProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    # getter for: Lcom/android/settings/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/A2dpProfile;->access$200(Lcom/android/settings/bluetooth/A2dpProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    # getter for: Lcom/android/settings/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/settings/bluetooth/A2dpProfile;->access$300(Lcom/android/settings/bluetooth/A2dpProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    # getter for: Lcom/android/settings/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/A2dpProfile;->access$400(Lcom/android/settings/bluetooth/A2dpProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/bluetooth/A2dpProfile;->mIsProfileReady:Z
    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/A2dpProfile;->access$502(Lcom/android/settings/bluetooth/A2dpProfile;Z)Z

    return-void

    :cond_3
    const-string v3, "A2dpProfile"

    const-string v4, "Bluetooth device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1    # I

    # getter for: Lcom/android/settings/bluetooth/A2dpProfile;->V:Z
    invoke-static {}, Lcom/android/settings/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/bluetooth/A2dpProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/A2dpProfile;->access$502(Lcom/android/settings/bluetooth/A2dpProfile;Z)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settings/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/A2dpProfile;->access$102(Lcom/android/settings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method
