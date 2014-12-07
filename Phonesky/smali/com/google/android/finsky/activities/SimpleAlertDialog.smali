.class public Lcom/google/android/finsky/activities/SimpleAlertDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SimpleAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;,
        Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;,
        Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    }
.end annotation


# instance fields
.field private mDialogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mHasBeenDismissed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mHasBeenDismissed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->doPositiveClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->doNegativeClick()V

    return-void
.end method

.method private buildAlertDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 8

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0c0055

    invoke-direct {v2, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "title_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "title_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    const-string v6, "message_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "message_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    :goto_0
    const-string v6, "positive_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "positive_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;-><init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    const-string v6, "negative_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "negative_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$3;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$3;-><init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v6, "layoutId"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCustomLayout(Landroid/app/AlertDialog;Landroid/os/Bundle;)V

    :goto_1
    const-string v6, "cancel_on_touch_outside"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "cancel_on_touch_outside"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_4
    return-object v0

    :cond_5
    const-string v6, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_6
    const-string v6, "messageHtml"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "messageHtml"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setMessageViewClickable(Landroid/app/AlertDialog;)V

    goto :goto_1
.end method

.method private doNegativeClick()V
    .locals 8

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->dismiss()V

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mHasBeenDismissed:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mHasBeenDismissed:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "target_request_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "extra_arguments"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "click_event_type_negative"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mDialogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v5, v1, v6, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v4, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;->onNegativeClick(ILandroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->onNegativeClick()V

    goto :goto_0
.end method

.method private doPositiveClick()V
    .locals 8

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->dismiss()V

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mHasBeenDismissed:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mHasBeenDismissed:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "target_request_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "extra_arguments"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "click_event_type_positive"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mDialogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v5, v1, v6, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v4, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;->onPositiveClick(ILandroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->onPositiveClick()V

    goto :goto_0
.end method

.method private getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCustomLayout(Landroid/app/AlertDialog;Landroid/os/Bundle;)V
    .locals 5

    const-string v3, "layoutId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    instance-of v3, v2, Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;

    if-eqz v3, :cond_0

    const-string v3, "config_arguments"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "config_arguments"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    check-cast v2, Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;

    invoke-interface {v2, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;->configureView(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private setMessageViewClickable(Landroid/app/AlertDialog;)V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;-><init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method private setUpEventLogger(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v3, "log_account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    iput-object v4, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mDialogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const-string v3, "impression_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "impression_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "impression_cookie"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-direct {v3, v2, v1, v4, v4}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mDialogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->doNegativeClick()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setUpEventLogger(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mDialogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mDialogNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->buildAlertDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onNegativeClick()V
    .locals 0

    return-void
.end method

.method protected onPositiveClick()V
    .locals 0

    return-void
.end method
