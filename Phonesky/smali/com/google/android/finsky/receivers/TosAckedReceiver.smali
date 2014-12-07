.class public Lcom/google/android/finsky/receivers/TosAckedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TosAckedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/TosAckedReceiver;
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/receivers/TosAckedReceiver;->ackTos(Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method

.method private ackTos(Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Could not get DFE API, returning."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeToc;->getTosToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/receivers/TosAckedReceiver$2;

    invoke-direct {v3, p0, p1, p3}, Lcom/google/android/finsky/receivers/TosAckedReceiver$2;-><init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    new-instance v4, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;-><init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->acceptTos(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private fetchToc(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Could not get DFE API, returning."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;-><init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;Z)V

    invoke-static {v0, v2, v1}, Lcom/google/android/finsky/utils/GetTocHelper;->getToc(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "Invalid Broadcast: requires extras."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "TosAckedReceiver.account"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TosAckedReceiver.optIn"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_2

    const-string v3, "Invalid Broadcast: no account."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/receivers/TosAckedReceiver;->fetchToc(Ljava/lang/String;Z)V

    goto :goto_0
.end method
