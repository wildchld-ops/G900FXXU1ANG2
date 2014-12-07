.class Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;
.super Ljava/lang/Object;
.source "CheckWifiAndAutoUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->loadLibrariesAndAutoUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLoaded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;->this$0:Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;->mLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;->mLoaded:I

    iget v0, p0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;->mLoaded:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;->this$0:Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;

    # invokes: Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->onLoaded()V
    invoke-static {v0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->access$000(Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;)V

    :cond_0
    return-void
.end method
