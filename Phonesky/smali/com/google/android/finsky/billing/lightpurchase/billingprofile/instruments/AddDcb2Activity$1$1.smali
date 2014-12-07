.class Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1$1;
.super Ljava/lang/Object;
.source "AddDcb2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1$1;->this$1:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1$1;->this$1:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1$1;->this$1:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;->mSavedFlowState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;->startOrResumeFlow(Landroid/os/Bundle;)V

    return-void
.end method
