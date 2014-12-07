.class Lcom/samsung/dialer/volte/VoLTEStateTracker$1;
.super Ljava/lang/Object;
.source "VoLTEStateTracker.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/volte/VoLTEStateTracker;->registerIIMSListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/volte/VoLTEStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$1;->this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$1;->this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    # getter for: Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->access$000(Lcom/samsung/dialer/volte/VoLTEStateTracker;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$1;->this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$1;->this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    # getter for: Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->access$000(Lcom/samsung/dialer/volte/VoLTEStateTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    # getter for: Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIMSListener isVolteEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker$1;->this$0:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    # getter for: Lcom/samsung/dialer/volte/VoLTEStateTracker;->mListener:Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;
    invoke-static {v1}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->access$200(Lcom/samsung/dialer/volte/VoLTEStateTracker;)Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;->onReceive(Z)V

    :cond_0
    return-void
.end method
