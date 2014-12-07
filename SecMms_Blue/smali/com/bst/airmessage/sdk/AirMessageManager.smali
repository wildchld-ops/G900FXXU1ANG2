.class public final Lcom/bst/airmessage/sdk/AirMessageManager;
.super Ljava/lang/Object;
.source "AirMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_BIND_SERVICE:Ljava/lang/String; = "com.bst.airmessage.BINDE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "AirMessageManager"

.field private static mInstance:Lcom/bst/airmessage/sdk/AirMessageManager;


# instance fields
.field private isServiceConnected:Z

.field private mCallback:Lcom/bst/airmessage/sdk/IAirMessageCallback;

.field private final mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mInnerlCallback:Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;

.field private mService:Lcom/bst/airmessage/sdk/IAirMessageService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;

    invoke-direct {v0, p0}, Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;-><init>(Lcom/bst/airmessage/sdk/AirMessageManager;)V

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mInnerlCallback:Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;

    new-instance v0, Lcom/bst/airmessage/sdk/AirMessageManager$1;

    invoke-direct {v0, p0}, Lcom/bst/airmessage/sdk/AirMessageManager$1;-><init>(Lcom/bst/airmessage/sdk/AirMessageManager;)V

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mConn:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bst/airmessage/sdk/AirMessageManager;->bindToService()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/bst/airmessage/sdk/AirMessageManager;)Lcom/bst/airmessage/sdk/IAirMessageCallback;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mCallback:Lcom/bst/airmessage/sdk/IAirMessageCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bst/airmessage/sdk/AirMessageManager;)Lcom/bst/airmessage/sdk/IAirMessageService;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bst/airmessage/sdk/AirMessageManager;Lcom/bst/airmessage/sdk/IAirMessageService;)Lcom/bst/airmessage/sdk/IAirMessageService;
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/bst/airmessage/sdk/AirMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bst/airmessage/sdk/AirMessageManager;)Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mInnerlCallback:Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;

    return-object v0
.end method

.method private bindToService()V
    .locals 4

    const-string v1, "AirMessageManager"

    const-string v2, "++++ bindToService ++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.bst.airmessage.BINDE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/bst/airmessage/sdk/AirMessageManager;
    .locals 2

    const-class v1, Lcom/bst/airmessage/sdk/AirMessageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bst/airmessage/sdk/AirMessageManager;->mInstance:Lcom/bst/airmessage/sdk/AirMessageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bst/airmessage/sdk/AirMessageManager;

    invoke-direct {v0, p0}, Lcom/bst/airmessage/sdk/AirMessageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bst/airmessage/sdk/AirMessageManager;->mInstance:Lcom/bst/airmessage/sdk/AirMessageManager;

    :cond_0
    sget-object v0, Lcom/bst/airmessage/sdk/AirMessageManager;->mInstance:Lcom/bst/airmessage/sdk/AirMessageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unbindToService()V
    .locals 3

    iget-boolean v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.bst.airmessage.BINDE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    const-string v1, "AirMessageManager"

    const-string v2, "++++ finish ++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/bst/airmessage/sdk/AirMessageManager;->mInstance:Lcom/bst/airmessage/sdk/AirMessageManager;

    iget-boolean v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;

    iget-object v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mInnerlCallback:Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;

    invoke-interface {v1, v2}, Lcom/bst/airmessage/sdk/IAirMessageService;->unregisterCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/bst/airmessage/sdk/AirMessageManager;->unbindToService()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAirMessageVersion()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;

    invoke-interface {v2}, Lcom/bst/airmessage/sdk/IAirMessageService;->getAirMessageVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isAirMessageOn()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;

    invoke-interface {v2}, Lcom/bst/airmessage/sdk/IAirMessageService;->isAirMessageOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mCallback:Lcom/bst/airmessage/sdk/IAirMessageCallback;

    return-void
.end method

.method public showAirMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bst/airmessage/sdk/AirMessage;",
            ">;)V"
        }
    .end annotation

    iget-boolean v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;

    invoke-interface {v1, p1}, Lcom/bst/airmessage/sdk/IAirMessageService;->showAirMessages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showSingleAirMessage(Lcom/bst/airmessage/sdk/AirMessage;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/bst/airmessage/sdk/AirMessageManager;->showAirMessages(Ljava/util/List;)V

    return-void
.end method

.method public unregisterCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mCallback:Lcom/bst/airmessage/sdk/IAirMessageCallback;

    return-void
.end method

.method public updateReplyMessageStatus(Lcom/bst/airmessage/sdk/ReplyStatus;)V
    .locals 2

    iget-boolean v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;

    invoke-interface {v1, p1}, Lcom/bst/airmessage/sdk/IAirMessageService;->updateReplyMessageStatus(Lcom/bst/airmessage/sdk/ReplyStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
