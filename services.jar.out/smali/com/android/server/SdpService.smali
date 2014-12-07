.class public Lcom/android/server/SdpService;
.super Landroid/os/dar/ISdpService$Stub;
.source "SdpService.java"


# static fields
.field private static final KNOX_SENS_COLUMNS:Ljava/lang/String; = "/system/etc/knox_sensitive_columns.xml"

.field private static final TAG:Ljava/lang/String; = "SDP.service"


# instance fields
.field mContext:Landroid/content/Context;

.field mSdpPasswordService:Lcom/android/server/SdpPasswordService;

.field mSensitiveColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/dar/column/Table;",
            ">;"
        }
    .end annotation
.end field

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/dar/ISdpService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpService;->mSdpPasswordService:Lcom/android/server/SdpPasswordService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/SdpService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private importColumnList(Ljava/io/InputStream;)V
    .locals 6

    new-instance v1, Landroid/os/dar/column/Parser;

    invoke-direct {v1, p1}, Landroid/os/dar/column/Parser;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1}, Landroid/os/dar/column/Parser;->scan()Landroid/os/dar/column/Column;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/SdpService;->mSensitiveColumns:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/os/dar/column/Column;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/dar/column/Table;

    if-nez v2, :cond_1

    const-string v3, "SDP.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create table for uri > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/dar/column/Column;->getURI()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/dar/log/SdpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/dar/column/Table;

    invoke-virtual {v0}, Landroid/os/dar/column/Column;->getURI()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/dar/column/Table;-><init>(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/server/SdpService;->mSensitiveColumns:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/os/dar/column/Column;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/dar/column/Table;->addColumn(Landroid/os/dar/column/Column;)V

    :cond_2
    if-nez v0, :cond_0

    return-void
.end method

.method static native nativeOnBoot(I)I
.end method

.method static native nativeOnChangePassword(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method static native nativeOnDeviceLocked(I)I
.end method

.method static native nativeOnDeviceUnlocked(ILjava/lang/String;)I
.end method

.method static native nativeOnUserAdded(ILjava/lang/String;)I
.end method

.method static native nativeOnUserRemoved(I)I
.end method

.method private sendBroadcastForStateChange(II)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "SDP.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/SdpService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public addColumn(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v2, "SDP.service"

    const-string v3, "Invalid arguments"

    invoke-static {v2, v3}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/dar/column/Column;

    sget v2, Landroid/os/dar/column/Column;->ATTR_SENSITIVE:I

    invoke-direct {v0, p1, p2, v2}, Landroid/os/dar/column/Column;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/SdpService;->mSensitiveColumns:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/dar/column/Table;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/dar/column/Table;

    invoke-virtual {v0}, Landroid/os/dar/column/Column;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/dar/column/Table;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/server/SdpService;->mSensitiveColumns:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/os/dar/column/Column;->getURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/dar/column/Table;->addColumn(Landroid/os/dar/column/Column;)V

    goto :goto_0
.end method

.method public getState(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SDP.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpService;->mSensitiveColumns:Ljava/util/HashMap;

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/knox_sensitive_columns.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/android/server/SdpService;->importColumnList(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/android/server/SdpPasswordService;

    iget-object v2, p0, Lcom/android/server/SdpService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/SdpPasswordService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SdpService;->mSdpPasswordService:Lcom/android/server/SdpPasswordService;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isSensitiveColumn(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/SdpService;->mSensitiveColumns:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/dar/column/Table;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/dar/column/Table;->searchColumn(Ljava/lang/String;)Landroid/os/dar/column/Column;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onBoot(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/SdpService;->nativeOnBoot(I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SDP.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error to handle onBoot [persona : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/SdpService;->mSdpPasswordService:Lcom/android/server/SdpPasswordService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/SdpPasswordService;->hashPassword(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "SDP.service"

    const-string v4, "onChangePassword failed"

    invoke-static {v3, v4}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/SdpService;->mSdpPasswordService:Lcom/android/server/SdpPasswordService;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/SdpPasswordService;->changePassword(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "SDP.service"

    const-string v4, "onChangePassword :: failed to change password"

    invoke-static {v3, v4}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v1, v0}, Lcom/android/server/SdpService;->nativeOnChangePassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SDP.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle onChangePassword [persona : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDeviceLocked(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/android/server/SdpService;->nativeOnDeviceLocked(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SDP.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle onDeviceLocked [persona : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/android/server/SdpService;->sendBroadcastForStateChange(II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDeviceUnlocked(ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/SdpService;->mSdpPasswordService:Lcom/android/server/SdpPasswordService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/SdpPasswordService;->hashPassword(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "SDP.service"

    const-string v3, "Failed to get hashed pw.."

    invoke-static {v2, v3}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, v0}, Lcom/android/server/SdpService;->nativeOnDeviceUnlocked(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "SDP.service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to handle onDeviceUnlocked [persona : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/android/server/SdpService;->sendBroadcastForStateChange(II)V

    move v1, v2

    goto :goto_0
.end method

.method public onUserAdded(ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/SdpService;->mSdpPasswordService:Lcom/android/server/SdpPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/SdpPasswordService;->createPassword(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "SDP.service"

    const-string v3, "Failed to get hashed pw.."

    invoke-static {v2, v3}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "SDP.service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUserAdded test code hash="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/dar/log/SdpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/server/SdpService;->nativeOnUserAdded(ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SDP.service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to handle onUserAdded [persona : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onUserRemoved(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpService;->mSdpPasswordService:Lcom/android/server/SdpPasswordService;

    invoke-virtual {v0, p1}, Lcom/android/server/SdpPasswordService;->removePassword(I)Z

    invoke-static {p1}, Lcom/android/server/SdpService;->nativeOnUserRemoved(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SDP.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle onUserRemoved [persona : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "SDP.service"

    const-string v1, "SdpService ready"

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SdpService;->init()V

    return-void
.end method
