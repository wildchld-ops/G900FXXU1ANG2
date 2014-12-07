.class public Lcom/google/android/finsky/fragments/DeepLinkShimFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DeepLinkShimFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/UrlBasedPageFragment;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;",
        ">;"
    }
.end annotation


# instance fields
.field private mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method protected static findInstallAccount([Landroid/accounts/Account;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const-string v6, "ah"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    move-object v2, p0

    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const-string v2, "referrer"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gclid"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gclid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public static newInstance(Landroid/net/Uri;)Landroid/support/v4/app/Fragment;
    .locals 5

    new-instance v1, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->findInstallAccount([Landroid/accounts/Account;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->setDfeAccount(Ljava/lang/String;)V

    const-string v3, "DeepLinkShimFragment.overrideAccount"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->requestData()V

    return-void
.end method

.method public onDataChanged()V
    .locals 14

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v11

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v13, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->serverLogsCookie:[B

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v3, v0, v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "DeepLinkShimFragment.overrideAccount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v4, v0, v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v5, v0, v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v1, v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    if-eqz v0, :cond_5

    const-string v0, "Direct purchase deprecated."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v9, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v0, v1, v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, v9, Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;->detailsUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "DeepLinkShimFragment.overrideAccount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v0, v1, v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v2, v2, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v0, v1, v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(ILjava/lang/String;[B)V

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;->prefillCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    iget-object v12, v0, Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;->prefillCode:Ljava/lang/String;

    :cond_7
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v12}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->createIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v1, v0, v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLinkEvent(ILjava/lang/String;[B)V

    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "dont_resolve_again"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_9
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onDataChanged()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onResponse(Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;)V

    return-void
.end method

.method protected rebindViews()V
    .locals 0

    return-void
.end method

.method protected requestData()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->switchToLoading()V

    return-void
.end method
