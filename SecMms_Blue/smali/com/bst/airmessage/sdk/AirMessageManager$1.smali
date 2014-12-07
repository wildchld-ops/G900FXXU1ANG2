.class Lcom/bst/airmessage/sdk/AirMessageManager$1;
.super Ljava/lang/Object;
.source "AirMessageManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bst/airmessage/sdk/AirMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bst/airmessage/sdk/AirMessageManager;


# direct methods
.method constructor <init>(Lcom/bst/airmessage/sdk/AirMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessageManager$1;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager$1;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    invoke-static {p2}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bst/airmessage/sdk/IAirMessageService;

    move-result-object v2

    # setter for: Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;
    invoke-static {v1, v2}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$102(Lcom/bst/airmessage/sdk/AirMessageManager;Lcom/bst/airmessage/sdk/IAirMessageService;)Lcom/bst/airmessage/sdk/IAirMessageService;

    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager$1;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    const/4 v2, 0x1

    # setter for: Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z
    invoke-static {v1, v2}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$202(Lcom/bst/airmessage/sdk/AirMessageManager;Z)Z

    :try_start_0
    iget-object v1, p0, Lcom/bst/airmessage/sdk/AirMessageManager$1;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    # getter for: Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;
    invoke-static {v1}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$100(Lcom/bst/airmessage/sdk/AirMessageManager;)Lcom/bst/airmessage/sdk/IAirMessageService;

    move-result-object v1

    iget-object v2, p0, Lcom/bst/airmessage/sdk/AirMessageManager$1;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    # getter for: Lcom/bst/airmessage/sdk/AirMessageManager;->mInnerlCallback:Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;
    invoke-static {v2}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$300(Lcom/bst/airmessage/sdk/AirMessageManager;)Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bst/airmessage/sdk/IAirMessageService;->registerCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager$1;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    const/4 v1, 0x0

    # setter for: Lcom/bst/airmessage/sdk/AirMessageManager;->mService:Lcom/bst/airmessage/sdk/IAirMessageService;
    invoke-static {v0, v1}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$102(Lcom/bst/airmessage/sdk/AirMessageManager;Lcom/bst/airmessage/sdk/IAirMessageService;)Lcom/bst/airmessage/sdk/IAirMessageService;

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager$1;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    const/4 v1, 0x0

    # setter for: Lcom/bst/airmessage/sdk/AirMessageManager;->isServiceConnected:Z
    invoke-static {v0, v1}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$202(Lcom/bst/airmessage/sdk/AirMessageManager;Z)Z

    return-void
.end method
