.class Lcom/android/launcher2/ContextualPageReceiver$2;
.super Ljava/lang/Object;
.source "ContextualPageReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ContextualPageReceiver;->runDealyedReceiverEvent(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ContextualPageReceiver;

.field final synthetic val$cpType:I

.field final synthetic val$isCpEnable:I

.field final synthetic val$settingState:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/ContextualPageReceiver;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->this$0:Lcom/android/launcher2/ContextualPageReceiver;

    iput p2, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    iput p3, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$isCpEnable:I

    iput p4, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$settingState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->this$0:Lcom/android/launcher2/ContextualPageReceiver;

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->POSTED_FLAG:[Z
    invoke-static {v1}, Lcom/android/launcher2/ContextualPageReceiver;->access$200(Lcom/android/launcher2/ContextualPageReceiver;)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    const-string v1, "ContextualPageReceiver"

    const-string v2, "runDealyedReceiverEvent called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContextualPageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCpEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$isCpEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CP settingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$settingState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CP type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$400()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v1, :cond_1

    const-string v1, "ContextualPageReceiver"

    const-string v2, "runDealyedReceiverEvent, but HomeView is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->this$0:Lcom/android/launcher2/ContextualPageReceiver;

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mPageActive:[Z
    invoke-static {v1}, Lcom/android/launcher2/ContextualPageReceiver;->access$500(Lcom/android/launcher2/ContextualPageReceiver;)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$100()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v1

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$400()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    iget v1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$isCpEnable:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$settingState:I

    if-ne v1, v4, :cond_2

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$600()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$100()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    :cond_2
    # |= operator for: Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageReceiver;->access$676(I)I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$isCpEnable:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$settingState:I

    if-ne v1, v4, :cond_4

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$600()I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    # getter for: Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;
    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->access$100()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/ContextualPageReceiver$2;->val$cpType:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    :cond_4
    xor-int/lit8 v1, v0, -0x1

    # &= operator for: Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I
    invoke-static {v1}, Lcom/android/launcher2/ContextualPageReceiver;->access$672(I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
