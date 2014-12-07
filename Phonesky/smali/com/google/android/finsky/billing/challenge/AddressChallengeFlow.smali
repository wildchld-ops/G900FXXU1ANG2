.class public Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "AddressChallengeFlow.java"

# interfaces
.implements Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;


# instance fields
.field private mAddressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

.field private mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

.field private mFinishOnSwitchCountry:Z

.field private mResultFormat:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowContext;
    .param p2    # Lcom/google/android/finsky/billing/BillingFlowListener;
    .param p3    # Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    .param p4    # Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    iput-object p3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-eqz p4, :cond_0

    const-string v1, "AddressChallengeFlow.finishOnSwitchCountry"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mFinishOnSwitchCountry:Z

    if-eqz p4, :cond_1

    const-string v0, "AddressChallengeFlow.resultFormat"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AddressChallengeFlow.resultFormat"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    :cond_1
    return-void
.end method


# virtual methods
.method public onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/protos/BillingAddress$Address;[Z)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;
    .param p2    # Lcom/google/android/finsky/protos/BillingAddress$Address;
    .param p3    # [Z

    sget-object v5, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    if-ne p1, v5, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    if-nez v5, :cond_5

    invoke-static {p2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseAddressParam:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_6

    if-lez v4, :cond_3

    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    aget-boolean v5, p3, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v5, p3, v4

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const-string v5, "AddressChallengeFlow.address"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->finish(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    const-string v5, "AddressChallengeFlow.checkedCheckboxes"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_8
    sget-object v5, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    if-ne p1, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCountryChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mFinishOnSwitchCountry:Z

    if-eqz v1, :cond_0

    const-string v1, "Finishing due to country switch."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "AddressChallengeFlow.switchCountry"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AddressChallengeFlow.currentState"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->finish(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onInitialized()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    return-void
.end method

.method public onInitializing()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f090140

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "address_widget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "address_widget"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setOnResultListener(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;)V

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "address_widget"

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mParameters:Landroid/os/Bundle;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mParameters:Landroid/os/Bundle;

    const-string v3, "AddressChallengeFlow.previousState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->newInstance(Ljava/lang/String;Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setOnResultListener(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method
