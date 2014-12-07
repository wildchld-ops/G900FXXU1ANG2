.class Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$2;
.super Ljava/lang/Object;
.source "CheckWifiAndAutoUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$2;->this$0:Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$2;->this$0:Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->stopSelf()V

    return-void
.end method
