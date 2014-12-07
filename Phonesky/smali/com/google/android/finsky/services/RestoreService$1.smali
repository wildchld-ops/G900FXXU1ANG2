.class Lcom/google/android/finsky/services/RestoreService$1;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/RestoreService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLoaded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$1;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->mLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->mLoaded:I

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->mLoaded:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v0}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v0

    # operator-- for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I
    invoke-static {v0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$1510(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)I

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->handleIntent(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/services/RestoreService;->access$1600(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$1;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v0}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->stopServiceIfDone()V

    goto :goto_0
.end method
