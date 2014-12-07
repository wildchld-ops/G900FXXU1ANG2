.class Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;
.super Ljava/lang/Object;
.source "CheckPromoOffersAction.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/CheckPromoOffersAction;->checkPromoOffers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->checkoutTokenRequired:Z

    if-eqz v1, :cond_2

    const-string v1, "Unexpected checkout_token_required. Skipping CheckPromoOffersAction."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    # getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$000(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    # getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$100(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    # setter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z
    invoke-static {v3}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$202(Z)Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    # getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$300(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    iget-object v1, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer:[Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    # getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$000(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer:[Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;->onResponse(Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;)V

    return-void
.end method
