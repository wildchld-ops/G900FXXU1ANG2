.class public Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;
.super Landroid/os/AsyncTask;
.source "VoLTEStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/volte/VoLTEStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskUpdateVoLTE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mListener:Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;

.field final synthetic this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/volte/VoLTEStateTracker;Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;->this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;->mListener:Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p1, v2

    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;->this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    invoke-virtual {v2, v0}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;->doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;->mListener:Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;->onReceive(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
