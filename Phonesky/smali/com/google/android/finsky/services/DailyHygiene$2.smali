.class Lcom/google/android/finsky/services/DailyHygiene$2;
.super Ljava/lang/Object;
.source "DailyHygiene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/DailyHygiene;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/DailyHygiene;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/DailyHygiene;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/DailyHygiene$2;->this$0:Lcom/google/android/finsky/services/DailyHygiene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/services/DailyHygiene$2;->this$0:Lcom/google/android/finsky/services/DailyHygiene;

    const/4 v1, 0x1

    # invokes: Lcom/google/android/finsky/services/DailyHygiene;->flushEventLogs(Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/services/DailyHygiene;->access$100(Lcom/google/android/finsky/services/DailyHygiene;Z)V

    return-void
.end method
