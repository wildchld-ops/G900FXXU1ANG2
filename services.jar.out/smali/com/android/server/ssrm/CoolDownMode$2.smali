.class Lcom/android/server/ssrm/CoolDownMode$2;
.super Ljava/lang/Object;
.source "CoolDownMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CoolDownMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CoolDownMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CoolDownMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-boolean v8, v8, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v8, v8, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    const/4 v9, 0x6

    if-lt v8, v9, :cond_3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v8, v8, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v0, v8, Lcom/android/server/ssrm/CoolDownMode;->mExceptionList:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v8, v8, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v9, "check_cooldown_list"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v8, v8, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v9, "check_cooldown_level"

    iget-object v10, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v10, v10, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v8, v8, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v9, "overheat_id"

    const v10, 0x1040a62

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, v6, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v9, v9, Lcom/android/server/ssrm/CoolDownMode;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget-object v9, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    iget v9, v9, Lcom/android/server/ssrm/CoolDownMode;->mCurSIOPStep:I

    # invokes: Lcom/android/server/ssrm/CoolDownMode;->killActiveApplications(I)I
    invoke-static {v8, v9}, Lcom/android/server/ssrm/CoolDownMode;->access$000(Lcom/android/server/ssrm/CoolDownMode;I)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/CoolDownMode;->showCoolDownAlert(Ljava/lang/String;)V

    :cond_2
    iget-object v8, p0, Lcom/android/server/ssrm/CoolDownMode$2;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/ssrm/CoolDownMode;->mStartKillActiveApplicationsRunnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/ssrm/CoolDownMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/CoolDownMode;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mKillActiveApplicationsRunnable:: e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
