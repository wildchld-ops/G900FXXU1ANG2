.class public Lcom/android/dar/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# static fields
.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_BOOTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDP.manager"

.field private static _instance:Lcom/android/dar/SdpManager;


# instance fields
.field mISdpService:Landroid/os/dar/ISdpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dar/SdpManager;->_instance:Lcom/android/dar/SdpManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dar/SdpManager;->mISdpService:Landroid/os/dar/ISdpService;

    return-void
.end method

.method public static getSdpManager()Lcom/android/dar/SdpManager;
    .locals 1

    sget-object v0, Lcom/android/dar/SdpManager;->_instance:Lcom/android/dar/SdpManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/dar/SdpManager;

    invoke-direct {v0}, Lcom/android/dar/SdpManager;-><init>()V

    sput-object v0, Lcom/android/dar/SdpManager;->_instance:Lcom/android/dar/SdpManager;

    :cond_0
    sget-object v0, Lcom/android/dar/SdpManager;->_instance:Lcom/android/dar/SdpManager;

    return-object v0
.end method

.method private getSdpService()Landroid/os/dar/ISdpService;
    .locals 1

    iget-object v0, p0, Lcom/android/dar/SdpManager;->mISdpService:Landroid/os/dar/ISdpService;

    if-nez v0, :cond_0

    const-string v0, "knox_keystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/dar/ISdpService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/dar/ISdpService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dar/SdpManager;->mISdpService:Landroid/os/dar/ISdpService;

    :cond_0
    iget-object v0, p0, Lcom/android/dar/SdpManager;->mISdpService:Landroid/os/dar/ISdpService;

    return-object v0
.end method


# virtual methods
.method public addColumn(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/dar/ISdpService;->addColumn(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public getState(I)I
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/dar/ISdpService;->getState(I)I

    move-result v0

    return v0
.end method

.method public isSensitiveColumn(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/dar/ISdpService;->isSensitiveColumn(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onBoot(I)Z
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SDP.manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBoot() personaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/dar/ISdpService;->onBoot(I)Z

    move-result v0

    return v0
.end method

.method public onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/dar/ISdpService;->onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDeviceLocked(I)Z
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SDP.manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceLocked() personaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/dar/ISdpService;->onDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public onDeviceUnlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SDP.manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceUnlocked() personaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/dar/ISdpService;->onDeviceUnlocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserAdded(ILjava/lang/String;)Z
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SDP.manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserAdded() personaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/dar/ISdpService;->onUserAdded(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)Z
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/dar/ISdpService;->onUserRemoved(I)Z

    move-result v0

    return v0
.end method
