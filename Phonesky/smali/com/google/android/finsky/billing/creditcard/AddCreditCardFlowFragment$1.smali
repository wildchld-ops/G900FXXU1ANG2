.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;
.super Ljava/lang/Object;
.source "AddCreditCardFlowFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCountryChanged(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    # getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->access$100(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)Lcom/google/android/finsky/layout/BillingAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    # invokes: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->access$000(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;)V

    return-void
.end method
