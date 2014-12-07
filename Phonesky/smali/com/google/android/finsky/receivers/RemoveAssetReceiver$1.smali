.class Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;
.super Ljava/lang/Object;
.source "RemoveAssetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->this$0:Lcom/google/android/finsky/receivers/RemoveAssetReceiver;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->finishOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->access$000(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
