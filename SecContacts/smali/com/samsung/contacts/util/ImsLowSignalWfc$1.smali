.class Lcom/samsung/contacts/util/ImsLowSignalWfc$1;
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

    iput-object p1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    # getter for: Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRegistrationStateObserver.onChange(), activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v1

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->setImsOn(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/util/ImsLowSignalWfc$1;->this$0:Lcom/samsung/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalBase;->notifyLowSignalRegistraints()V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    # getter for: Lcom/samsung/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/contacts/util/ImsLowSignalWfc;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mRegistrationStateObserver/onChange(): getActivity() is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
