.class Lcom/google/android/finsky/analytics/AnalyticsStreamWriter$1;
.super Ljava/lang/Object;
.source "AnalyticsStreamWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->queueCommandWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter$1;->this$0:Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter$1;->this$0:Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    # invokes: Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->checkDebugWriterRunning()Z
    invoke-static {v0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->access$000(Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter$1;->this$0:Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    # invokes: Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->queueCommandWatcher()V
    invoke-static {v0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->access$100(Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;)V

    :cond_0
    return-void
.end method
