.class Lcom/android/server/ssrm/wluc/WlucThread$MyPakcageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "WlucThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/wluc/WlucThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPakcageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/wluc/WlucThread;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/wluc/WlucThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/wluc/WlucThread$MyPakcageInstallObserver;->this$0:Lcom/android/server/ssrm/wluc/WlucThread;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/wluc/WlucThread;Lcom/android/server/ssrm/wluc/WlucThread$1;)V
    .locals 0
    .param p1    # Lcom/android/server/ssrm/wluc/WlucThread;
    .param p2    # Lcom/android/server/ssrm/wluc/WlucThread$1;

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/wluc/WlucThread$MyPakcageInstallObserver;-><init>(Lcom/android/server/ssrm/wluc/WlucThread;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/server/ssrm/wluc/WlucThread;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/wluc/WlucThread;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/wluc/WlucThread;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
