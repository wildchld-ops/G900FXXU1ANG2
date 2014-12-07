.class Lcom/android/server/ssrm/Monitor$32$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor$32;->execute(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ssrm/Monitor$32;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor$32;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$32$1;->this$1:Lcom/android/server/ssrm/Monitor$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "sendCommandToSSRM:: create thread"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/32 v1, 0x927c0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$32$1;->this$1:Lcom/android/server/ssrm/Monitor$32;

    iget v1, v1, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    if-le v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$32$1;->this$1:Lcom/android/server/ssrm/Monitor$32;

    iget v2, v1, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCommandToSSRM:: count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$32$1;->this$1:Lcom/android/server/ssrm/Monitor$32;

    iget v3, v3, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$32$1;->this$1:Lcom/android/server/ssrm/Monitor$32;

    iget v1, v1, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    if-ne v1, v5, :cond_1

    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashModeForAll(Z)V

    const-string v1, "HeavyUserScenario"

    invoke-static {v1, v4}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$32$1;->this$1:Lcom/android/server/ssrm/Monitor$32;

    iput v4, v1, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    :cond_1
    return-void
.end method
