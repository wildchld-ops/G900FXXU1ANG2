.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

.field final synthetic val$errorRunnable:Ljava/lang/Runnable;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->val$errorRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v4, 0x1

    const-string v1, "Error getting toc: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-nez v1, :cond_0

    const-string v1, "Error - no billing config in toc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;

    iget-object v2, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Toc$BillingConfig;->carrierBillingConfig:Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    invoke-direct {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;-><init>(Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;)V

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;->val$successRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
