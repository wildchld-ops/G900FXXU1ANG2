.class Lcom/google/android/play/analytics/EventLogger$1;
.super Landroid/os/Handler;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/analytics/EventLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/analytics/EventLogger$LogSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/google/android/play/analytics/EventLogger$Configuration;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/play/analytics/EventLogger;


# direct methods
.method constructor <init>(Lcom/google/android/play/analytics/EventLogger;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/play/analytics/EventLogger$1;->this$0:Lcom/google/android/play/analytics/EventLogger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/google/android/play/analytics/EventLogger$1;->this$0:Lcom/google/android/play/analytics/EventLogger;

    # invokes: Lcom/google/android/play/analytics/EventLogger;->dispatchMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/google/android/play/analytics/EventLogger;->access$000(Lcom/google/android/play/analytics/EventLogger;Landroid/os/Message;)V

    return-void
.end method
