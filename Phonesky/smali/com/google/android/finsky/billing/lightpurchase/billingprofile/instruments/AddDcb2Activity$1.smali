.class Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;
.super Ljava/lang/Object;
.source "AddDcb2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingParams(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method
