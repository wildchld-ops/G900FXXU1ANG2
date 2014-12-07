.class Lcom/google/android/finsky/layout/BillingAddress$1;
.super Ljava/lang/Object;
.source "BillingAddress.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountries(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/BillingAddress;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/BillingAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$000(Lcom/google/android/finsky/layout/BillingAddress;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$100(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$100(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$200(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$200(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;->onBillingCountryChanged(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/BillingAddress$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
