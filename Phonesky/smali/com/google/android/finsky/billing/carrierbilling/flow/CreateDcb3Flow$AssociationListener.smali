.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;
.super Ljava/lang/Object;
.source "CreateDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssociationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    # invokes: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideVerifyAssociationDialog()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$100(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    iget v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->status:I

    if-ne v3, v5, :cond_3

    iget-object v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    iget-object v4, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    # setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;
    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$202(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Lcom/google/android/finsky/protos/BillingAddress$Address;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    iput-boolean v5, v3, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPhoneNumber:Z

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;
    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    sget-object v4, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    # setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;
    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$302(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :cond_1
    iget-object v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-object v0, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    iget-object v4, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->url:Ljava/lang/String;

    # setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$402(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    iget-object v4, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    # setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosVersion:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->access$502(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    :goto_0
    return-void

    :cond_3
    const-string v2, "UNKNOWN"

    iget v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->status:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f090093

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASSOCIATION_TIMEOUT"

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-virtual {v3, v1, v2, v1, v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-boolean v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->hasCarrierErrorMessage:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierErrorMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierErrorMessage:Ljava/lang/String;

    :goto_2
    const-string v2, "INVALID_USER"

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f090094

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;->onResponse(Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method
