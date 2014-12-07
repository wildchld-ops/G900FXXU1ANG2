.class public abstract Lcom/google/android/finsky/billing/InstrumentFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "InstrumentFlow.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowContext;
    .param p2    # Lcom/google/android/finsky/billing/BillingFlowListener;
    .param p3    # Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    if-eqz v1, :cond_0

    const-string v1, "instrument_id"

    iget-object v2, p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    if-eqz v1, :cond_1

    const-string v1, "redeemed_offer_message_html"

    iget-object v2, p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    iget-object v2, v2, Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;->descriptionHtml:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/InstrumentFlow;->finish(Landroid/os/Bundle;)V

    return-void
.end method
