.class Lcom/google/android/finsky/analytics/DfeAnalytics$3;
.super Ljava/lang/Object;
.source "DfeAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/DfeAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/analytics/DfeAnalytics;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/analytics/DfeAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$3;->this$0:Lcom/google/android/finsky/analytics/DfeAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$3;->this$0:Lcom/google/android/finsky/analytics/DfeAnalytics;

    # invokes: Lcom/google/android/finsky/analytics/DfeAnalytics;->flushLogs()V
    invoke-static {v0}, Lcom/google/android/finsky/analytics/DfeAnalytics;->access$000(Lcom/google/android/finsky/analytics/DfeAnalytics;)V

    return-void
.end method
