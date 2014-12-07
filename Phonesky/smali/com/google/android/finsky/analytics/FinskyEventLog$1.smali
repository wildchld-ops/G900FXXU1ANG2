.class final Lcom/google/android/finsky/analytics/FinskyEventLog$1;
.super Ljava/lang/Object;
.source "FinskyEventLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/analytics/FinskyEventLog;->rootImpressionImpl(Landroid/os/Handler;JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$impressionId:J

.field final synthetic val$rootNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method constructor <init>(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog$1;->val$impressionId:J

    iput-object p3, p0, Lcom/google/android/finsky/analytics/FinskyEventLog$1;->val$rootNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog$1;->val$impressionId:J

    iget-object v2, p0, Lcom/google/android/finsky/analytics/FinskyEventLog$1;->val$rootNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v3, 0x0

    # invokes: Lcom/google/android/finsky/analytics/FinskyEventLog;->sendImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->access$000(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V

    return-void
.end method
