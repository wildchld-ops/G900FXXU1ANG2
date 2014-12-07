.class Lcom/diotek/ime/framework/common/InputManagerImpl$20;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "mIncomingCallReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4100()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4100()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4100()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    :cond_1
    const-string v1, "OFFHOOK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v2, 0x1

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsCalling:Z
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5502(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsCalling:Z
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5502(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    goto :goto_0
.end method
