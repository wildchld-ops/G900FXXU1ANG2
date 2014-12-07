.class public Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddressChallengeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    }
.end annotation


# instance fields
.field private mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

.field private mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

.field private mMainView:Landroid/view/ViewGroup;

.field private mPreviousState:Landroid/os/Bundle;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/layout/BillingAddress;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->saveMyState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->onBillingCountriesLoaded()V

    return-void
.end method

.method private clearErrorMessages()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/BillingAddress;->clearErrorMessage()V

    return-void
.end method

.method private displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .locals 1
    .param p1    # Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private displayErrors(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->clearErrorMessages()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-static {v5, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getTopMostView(Landroid/view/ViewGroup;Ljava/util/Collection;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private getAddressOrShowErrors()Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/BillingAddress;->getAddressValidationErrors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->displayErrors(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/BillingAddress;->getAddress()Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCheckboxState()[Z
    .locals 6

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v4, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v1, v4

    new-array v3, v1, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private initializeCountriesFromChallenge()V
    .locals 7

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v5, v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v0, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    new-instance v4, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-direct {v4}, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;-><init>()V

    iget-object v5, v2, Lcom/google/android/finsky/protos/ChallengeProtos$Country;->regionCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    iput-boolean v6, v4, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryCode:Z

    iget-object v5, v2, Lcom/google/android/finsky/protos/ChallengeProtos$Country;->displayName:Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryName:Ljava/lang/String;

    iput-boolean v6, v4, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryName:Z

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->syncContinueButton()V

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v5}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setupWidgets(Landroid/os/Bundle;)V

    return-void
.end method

.method private loadBillingCountries()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    invoke-interface {v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onInitializing()V

    :cond_0
    new-instance v1, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$4;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    .param p2    # Landroid/os/Bundle;

    new-instance v1, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "address_challenge"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p2, v1, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    return-object v1
.end method

.method private onBillingCountriesLoaded()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    invoke-interface {v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onInitialized()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->syncContinueButton()V

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setupWidgets(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v2, "BillingCountries not loaded."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v2, 0x7f09008a

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, p0, v4, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveMyState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v2, v2, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v3, v3, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkbox_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/layout/BillingAddress;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private setupWidgets(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountries(Ljava/util/List;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/layout/BillingAddress;->restoreInstanceState(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v2, v2, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v2, v2, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iget-object v2, v2, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v2, v2, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iget-object v2, v2, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v4, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/protos/BillingAddress$Address;)V

    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$5;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$5;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCountries:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;)V

    goto :goto_1
.end method

.method private syncContinueButton()V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v4, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v4, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    aget-object v2, v4, v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    iget-boolean v4, v2, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;->required:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->syncContinueButton()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getAddressOrShowErrors()Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getCheckboxState()[Z

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/protos/BillingAddress$Address;[Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    invoke-interface {v1, v2, v3, v3}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/protos/BillingAddress$Address;[Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080077
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    if-nez p2, :cond_0

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const v10, 0x7f040019

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "address_challenge"

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iput-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    new-instance v10, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v10}, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;-><init>()V

    iput-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    array-length v8, v10

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    new-array v11, v8, [I

    iput-object v11, v10, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iget-object v12, v12, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez p3, :cond_1

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    new-instance v11, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;

    invoke-direct {v11, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v11, 0x7f080051

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v11, 0x7f080052

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v11, 0x7f080019

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    const/4 v6, 0x0

    :goto_3
    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v10, v10

    if-ge v6, v10, :cond_6

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    aget-object v5, v10, v6

    const v10, 0x7f040018

    iget-object v11, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v10, v5, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;->description:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    if-nez p3, :cond_4

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    if-nez v10, :cond_4

    iget-boolean v10, v5, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;->checked:Z

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_4
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int v10, v1, v6

    invoke-virtual {v3, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mPreviousState:Landroid/os/Bundle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkbox_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkbox_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_6
    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v11, 0x7f08003d

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/BillingAddress;

    iput-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v11, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;

    invoke-direct {v11, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$2;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v11, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$3;

    invoke-direct {v11, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$3;-><init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/BillingAddress;->setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v11, 0x7f080077

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mSaveButton:Landroid/widget/Button;

    const v11, 0x7f09017d

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    const v11, 0x7f080078

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mCancelButton:Landroid/widget/Button;

    const v11, 0x7f090076

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v10, v10, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v10, v10

    if-lez v10, :cond_7

    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->initializeCountriesFromChallenge()V

    :goto_5
    iget-object v10, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mMainView:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->loadBillingCountries()V

    goto :goto_5
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;->onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/protos/BillingAddress$Address;[Z)V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->loadBillingCountries()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->saveMyState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;

    return-void
.end method
