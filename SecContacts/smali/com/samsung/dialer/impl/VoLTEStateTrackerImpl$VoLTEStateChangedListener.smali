.class Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;
.super Ljava/lang/Object;
.source "VoLTEStateTrackerImpl.java"

# interfaces
.implements Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoLTEStateChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;->this$0:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;-><init>(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Z)V
    .locals 3

    # getter for: Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoLTEStateChangedListener - isRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;->this$0:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    # getter for: Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->access$200(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;->this$0:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    # invokes: Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->onReceiveForPeopleActivity(Z)V
    invoke-static {v0, p1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->access$300(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;Z)V

    :cond_0
    return-void
.end method
