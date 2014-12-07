.class public Lcom/google/android/finsky/billing/BillingProfileFragment;
.super Lcom/google/android/finsky/billing/BillingProfileBaseFragment;
.source "BillingProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;
    }
.end annotation


# instance fields
.field private mActionsHeader:Landroid/widget/TextView;

.field private mActionsHeaderSeparator:Landroid/view/View;

.field private mActionsView:Landroid/view/ViewGroup;

.field private mExistingInstrumentsView:Landroid/view/ViewGroup;

.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;-><init>()V

    const/16 v0, 0x320

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method private addEntry(Landroid/view/ViewGroup;Ljava/lang/String;IZLjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Z
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez p5, :cond_2

    const v4, 0x7f040021

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz p4, :cond_0

    const v4, 0x7f08006e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v2, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v4, 0x7f08006c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    invoke-virtual {v3, p3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const v4, 0x7f040020

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f08006d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getListener()Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "No listener registered."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingProfileFragment;
    .locals 3
    .param p0    # Landroid/accounts/Account;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "BillingProfileFragment.account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "BillingProfileFragment.purchaseContextToken"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/billing/BillingProfileFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/BillingProfileFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private notifyListenerOnCancel()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->getListener()Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;->onCancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getBackgroundEventServerLogsCookie()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCreditCardEventType()I
    .locals 1

    const/16 v0, 0x140

    return v0
.end method

.method protected getCreditCardIcon()I
    .locals 1

    const v0, 0x7f0200ec

    return v0
.end method

.method protected getDcbEventType()I
    .locals 1

    const/16 v0, 0x141

    return v0
.end method

.method protected getDcbIcon()I
    .locals 1

    const v0, 0x7f0200ea

    return v0
.end method

.method protected getGiftCardIcon()I
    .locals 1

    const v0, 0x7f0200ee

    return v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected getRedeemEventType()I
    .locals 1

    const/16 v0, 0x142

    return v0
.end method

.method protected getRedemptionContext()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getTopUpIcon()I
    .locals 1

    const v0, 0x7f0200f0

    return v0
.end method

.method protected getTopupEventType()I
    .locals 1

    const/16 v0, 0x143

    return v0
.end method

.method protected logLoading()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method protected logScreen()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0x321

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method protected notifyListenerOnInstrumentSelected(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->getListener()Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;->onInstrumentSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mExistingInstrumentsView:Landroid/view/ViewGroup;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsView:Landroid/view/ViewGroup;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mProgressIndicator:Landroid/view/View;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mProfileView:Landroid/view/View;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsHeader:Landroid/widget/TextView;

    const v2, 0x7f0900a7

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/BillingProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsHeaderSeparator:Landroid/view/View;

    return-object v0
.end method

.method protected onFatalError(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->renderProfile()V

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090212

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "BillingProfileFragment.errorDialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onInstrumentCreated(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileFragment;->notifyListenerOnInstrumentSelected(Ljava/lang/String;)V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->notifyListenerOnCancel()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->notifyListenerOnCancel()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onStoredValueAdded(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileFragment;->notifyListenerOnInstrumentSelected(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mProfileView:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/billing/BillingProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/BillingProfileFragment$2;-><init>(Lcom/google/android/finsky/billing/BillingProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected renderActions(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsView:Landroid/view/ViewGroup;

    iget-object v2, v9, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->displayTitle:Ljava/lang/String;

    iget v3, v9, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->iconRes:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v9, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->action:Landroid/view/View$OnClickListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/BillingProfileFragment;->addEntry(Landroid/view/ViewGroup;Ljava/lang/String;IZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->hideSeparator()V

    :cond_1
    return-void
.end method

.method protected renderInstruments([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V
    .locals 17
    .param p1    # [Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mExistingInstrumentsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsHeader:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsHeaderSeparator:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    iget-object v10, v1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;->selectedExternalInstrumentId:Ljava/lang/String;

    move-object/from16 v8, p1

    array-length v0, v8

    move/from16 v16, v0

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_2

    aget-object v12, v8, v11

    iget-object v1, v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v6, v1, Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;->disabledMessageHtml:Ljava/lang/String;

    :goto_2
    iget-object v13, v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v14, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    invoke-direct {v14}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;-><init>()V

    iget v1, v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    iput v1, v14, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;->instrumentFamily:I

    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;->hasInstrumentFamily:Z

    iput-boolean v5, v14, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;->isDefault:Z

    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;->hasIsDefault:Z

    new-instance v9, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    invoke-direct {v9}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;-><init>()V

    iput-object v14, v9, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mExistingInstrumentsView:Landroid/view/ViewGroup;

    iget-object v3, v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v7, Lcom/google/android/finsky/billing/BillingProfileFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9, v13}, Lcom/google/android/finsky/billing/BillingProfileFragment$1;-><init>(Lcom/google/android/finsky/billing/BillingProfileFragment;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/finsky/billing/BillingProfileFragment;->addEntry(Landroid/view/ViewGroup;Ljava/lang/String;IZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsHeader:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mActionsHeaderSeparator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mExistingInstrumentsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mExistingInstrumentsView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mExistingInstrumentsView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    invoke-virtual {v15}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->hideSeparator()V

    :cond_3
    return-void
.end method
