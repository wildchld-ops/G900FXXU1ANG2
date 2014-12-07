.class final Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;
.super Ljava/lang/Object;
.source "CarrierBillingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeStorageAndParams(Landroid/content/Context;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$getProvisioningIfNotOnWifi:Z

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;->val$getProvisioningIfNotOnWifi:Z

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;->val$getProvisioningIfNotOnWifi:Z

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$2;->val$successRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingParams(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method
