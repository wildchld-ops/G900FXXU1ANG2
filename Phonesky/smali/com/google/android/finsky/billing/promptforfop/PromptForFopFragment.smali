.class public Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;
.super Lcom/google/android/finsky/billing/BillingProfileBaseFragment;
.source "PromptForFopFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;
    }
.end annotation


# instance fields
.field private mActionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsView:Landroid/view/ViewGroup;

.field private mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

.field private mHasLoggedScreen:Z

.field private mMainView:Landroid/view/ViewGroup;

.field private mMoreActionsView:Landroid/view/ViewGroup;

.field private mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

.field private mMoreTogglerTitle:Landroid/widget/TextView;

.field private mMoreVisible:Z

.field private final mNoneOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedIndex:I

.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field private mUiMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;-><init>()V

    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    new-instance v0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$1;-><init>(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mNoneOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->notifyListenerOnNoneSelected()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->toggleMore()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->showMoreDetailsDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->selectItem(I)V

    return-void
.end method

.method private addActionEntry(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;IZ)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f040109

    invoke-virtual {v0, v4, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p2, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->displayTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0801eb

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget v4, p2, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->iconRes:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->iconRes:I

    invoke-virtual {v2, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    iget v4, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v1, p3}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    new-instance v4, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$4;

    invoke-direct {v4, p0, p3}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$4;-><init>(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;I)V

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->hideSeparator()V

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v4, p2, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->action:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private createNoneEntry()Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;
    .locals 4

    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    const v1, 0x7f0900b0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200e5

    iget-object v3, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mNoneOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private determineUiMode()I
    .locals 4

    const/4 v1, 0x2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    const-string v2, "cl:billing.prompt_for_fop_ui_mode_radio_button"

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "cl:billing.prompt_for_fop_ui_mode_billing_profile_nested"

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v2, "cl:billing.prompt_for_fop_ui_mode_billing_profile_more_details"

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const-string v2, "cl:billing.prompt_for_fop_ui_mode_billing_profile_not_now"

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const-string v2, "cl:billing.prompt_for_fop_ui_mode_billing_profile"

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "No UI mode specified, defaulting to UI_MODE_BILLING_PROFILE"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getListener()Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;

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

.method public static newInstance(Landroid/accounts/Account;[B)Landroid/support/v4/app/Fragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "BillingProfileFragment.account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "PromptForFopFragment.server_logs_cookie"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    new-instance v1, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private notifyListenerOnAlreadySetup()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getListener()Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;->onAlreadySetup()V

    :cond_0
    return-void
.end method

.method private notifyListenerOnFatalError(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getListener()Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;->onFatalError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyListenerOnInstrumentCreated()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getListener()Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;->onInstrumentCreated()V

    :cond_0
    return-void
.end method

.method private notifyListenerOnNoneSelected()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getListener()Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;->onNoneSelected()V

    :cond_0
    return-void
.end method

.method private selectItem(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mActionEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    iget-object v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/IconButtonGroup;->setEnabled(Z)V

    return-void
.end method

.method private showMoreDetailsDialog()V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v0, 0x7f0900b3

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090212

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x3f2

    iget-object v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mAccount:Landroid/accounts/Account;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PromptForFopFragment.more_details_dialog"

    invoke-virtual {v7, v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private syncMoreActionsVisibility()V
    .locals 3

    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreActionsView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreVisible:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleMore()V
    .locals 4

    const v3, 0x7f0200c6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreVisible:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreTogglerTitle:Landroid/widget/TextView;

    const v2, 0x7f0200a8

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreTogglerTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->showSeparator()V

    :goto_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->syncMoreActionsVisibility()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreTogglerTitle:Landroid/widget/TextView;

    const v2, 0x7f0200aa

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreTogglerTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->hideSeparator()V

    goto :goto_1
.end method


# virtual methods
.method protected getBackgroundEventServerLogsCookie()[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PromptForFopFragment.server_logs_cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getCreditCardEventType()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method protected getCreditCardIcon()I
    .locals 1

    const v0, 0x7f0200eb

    return v0
.end method

.method protected getDcbEventType()I
    .locals 1

    const/16 v0, 0x15f

    return v0
.end method

.method protected getDcbIcon()I
    .locals 1

    const v0, 0x7f0200e9

    return v0
.end method

.method protected getGiftCardIcon()I
    .locals 1

    const v0, 0x7f0200ed

    return v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected getRedeemEventType()I
    .locals 1

    const/16 v0, 0x160

    return v0
.end method

.method protected getRedemptionContext()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getTopUpIcon()I
    .locals 1

    const v0, 0x7f0200eb

    return v0
.end method

.method protected getTopupEventType()I
    .locals 1

    const/16 v0, 0x161

    return v0
.end method

.method protected logLoading()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v2, 0x0

    const/16 v4, 0xd5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method protected logScreen()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mHasLoggedScreen:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mHasLoggedScreen:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mActionEntries:Ljava/util/List;

    iget v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    iget-object v0, v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;->action:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->determineUiMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PromptForFopFragment.server_logs_cookie"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-eqz p1, :cond_0

    const-string v1, "PromptForFopFragment.more_visible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreVisible:Z

    const-string v1, "PromptForFopFragment.has_logged_screen"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mHasLoggedScreen:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v8, 0x7f040107

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f0801e9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v8, 0x7f08006a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mActionsView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f08006c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0900ad

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f080150

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f08006b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mProgressIndicator:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f080066

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mProfileView:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f08005d

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/IconButtonGroup;

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {v8, p0}, Lcom/google/android/finsky/layout/IconButtonGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/play/utils/PlayCorpusUtils;->getPlayActionButtonBackgroundDrawable(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/IconButtonGroup;->setLabelBackgroundResource(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02013b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/IconButtonGroup;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    const v9, 0x7f09017d

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/IconButtonGroup;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/IconButtonGroup;->setEnabled(Z)V

    const v8, 0x7f0801ec

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->hideSeparator()V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    const v9, 0x7f0801ed

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreTogglerTitle:Landroid/widget/TextView;

    const v8, 0x7f0801ea

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreActionsView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    new-instance v9, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$2;

    invoke-direct {v9, p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$2;-><init>(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f0801e7

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f0801e8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    const v9, 0x7f080154

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0081

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMainView:Landroid/view/ViewGroup;

    return-object v8

    :pswitch_1
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mNoneOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f090040

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/IconButtonGroup;->setVisibility(I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v8, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$3;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$3;-><init>(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v8, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    const v5, 0x7f0900b2

    const v4, 0x7f0200c5

    :goto_1
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_0
    const v5, 0x7f090040

    const v4, 0x7f0200cc

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onFatalError(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->notifyListenerOnFatalError(Ljava/lang/String;)V

    return-void
.end method

.method protected onInstrumentCreated(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->notifyListenerOnInstrumentCreated()V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mNoneOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "PromptForFopFragment.selected_index"

    iget v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "PromptForFopFragment.more_visible"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PromptForFopFragment.has_logged_screen"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mHasLoggedScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStoredValueAdded(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->notifyListenerOnInstrumentCreated()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "PromptForFopFragment.selected_index"

    iget v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->selectItem(I)V

    :cond_1
    return-void
.end method

.method protected renderActions(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mActionEntries:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->setVisibility(I)V

    iget v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    if-ne v5, v10, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->createNoneEntry()Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mUiMode:I

    if-ne v5, v10, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x4

    if-lt v5, v8, :cond_4

    move v1, v6

    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreToggler:Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mActionsView:Landroid/view/ViewGroup;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    if-eqz v1, :cond_3

    if-lt v2, v9, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mMoreActionsView:Landroid/view/ViewGroup;

    :cond_3
    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_5

    move v3, v6

    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->addActionEntry(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v1, v7

    goto :goto_0

    :cond_5
    move v3, v7

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->syncMoreActionsVisibility()V

    return-void
.end method

.method protected renderInstruments([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V
    .locals 0

    return-void
.end method

.method protected shouldRender([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)Z
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    if-lez v1, :cond_0

    const-string v1, "Unexpected instruments found."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->notifyListenerOnAlreadySetup()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
