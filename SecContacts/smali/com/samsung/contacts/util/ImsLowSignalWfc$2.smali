.class Lcom/samsung/contacts/util/ImsLowSignalWfc$2;
.super Landroid/database/ContentObserver;
.source "ImsLowSignalWfc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/util/ImsLowSignalWfc;-><init>(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/util/ImsLowSignalWfc;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    # getter for: Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLowSignalObserver.onChange(), activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    iget-object v2, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v2}, Lcom/samsung/contacts/util/ImsLowSignalBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isLowSignal(Landroid/content/ContentResolver;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/util/ImsLowSignalBase;->setLowSignal(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->notifyLowSignalRegistraints()V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mLowSignalObserver/onChange(): getActivity() is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
