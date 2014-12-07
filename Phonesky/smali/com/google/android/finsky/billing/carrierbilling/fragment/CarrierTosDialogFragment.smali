.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;
.super Lcom/google/android/finsky/fragments/LoggingDialogFragment;
.source "CarrierTosDialogFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
    }
.end annotation


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

.field private mTosUrl:Ljava/lang/String;

.field private mTosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/LoggingDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;)Lcom/google/android/finsky/layout/ButtonBar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;
    .locals 3

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "carrier_tos_url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "carrier_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setUpTos(Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%locale%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;-><init>(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x337

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/LoggingDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;->onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f04002a

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v3, "carrier_tos_url"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setUpTos(Ljava/lang/String;)V

    const v3, 0x7f080076

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v4, 0x7f090114

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v4, 0x7f090117

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    const v3, 0x7f080080

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    const v3, 0x7f080081

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f08007f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosWebViewClient;

    invoke-virtual {v8, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v3, "carrier_name"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090068

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v3, 0x5

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-object v0
.end method

.method public onNegativeButtonClick()V
    .locals 2

    const/16 v0, 0x339

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;->onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V

    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 2

    const/16 v0, 0x338

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;->onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V

    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;

    return-void
.end method
