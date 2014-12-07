.class public Lcom/sec/android/app/camera/CameraDirectConnectManager;
.super Ljava/lang/Object;
.source "CameraDirectConnectManager.java"


# static fields
.field private static final DIRECT_CONNECT_MANAGER_PACKAGENAME:Ljava/lang/String; = "com.sec.android.directconnect"

.field private static final DIRECT_CONNECT_START_O_ACTION:Ljava/lang/String; = "com.sec.android.directconnect.DIRECTCONNECT_O_START_ACTION"

.field private static final MIME_TYPE_DIRECT_CONNECT:Ljava/lang/String; = "application/com.sec.android.directconnect"

.field protected static final TAG:Ljava/lang/String; = "CameraDirectConnectManager"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CameraDirectConnectManager"

    const-string v2, "CameraDirectConnectManager is start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "CameraDirectConnectManager"

    const-string v2, "This device does not support NFC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/camera/CameraDirectConnectManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraDirectConnectManager$1;-><init>(Lcom/sec/android/app/camera/CameraDirectConnectManager;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager;->mActivity:Landroid/app/Activity;

    new-array v3, v4, [Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    new-instance v1, Lcom/sec/android/app/camera/CameraDirectConnectManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraDirectConnectManager$2;-><init>(Lcom/sec/android/app/camera/CameraDirectConnectManager;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager;->mActivity:Landroid/app/Activity;

    new-array v3, v4, [Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraDirectConnectManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraDirectConnectManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDirectConnectManager;->getMacData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMacData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager;->mActivity:Landroid/app/Activity;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "mac"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    or-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v5, "mimeType"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "wfdStatus"

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraDirectConnectManager;->isWFDisplayEnabled()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_0
    const-string v5, "mac"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    or-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v5, ""

    goto :goto_1
.end method

.method private isWFDisplayEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
