.class Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;
.super Ljava/lang/Object;
.source "LightPurchaseFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    iput p2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;->val$resultCode:I

    iput-object p3, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;->this$0:Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;->val$resultCode:I

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity$4;->val$data:Landroid/content/Intent;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->handleOfferResolutionResult(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->access$700(Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;ILandroid/content/Intent;)V

    return-void
.end method
