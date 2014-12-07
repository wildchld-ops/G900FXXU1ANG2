.class public Lcom/google/android/finsky/fragments/GaiaAuthFragment;
.super Landroid/support/v4/app/Fragment;
.source "GaiaAuthFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAuthRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mAuthenticationType:I

.field private mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

.field private mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mFailedCount:I

.field private mInput:Landroid/widget/EditText;

.field private mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

.field private mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mShowWarning:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAuthRequest:Lcom/android/volley/Request;

    new-instance v0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0x13a

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->verifyInput()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->success()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/fragments/GaiaAuthFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private failWithMaxAttemptsExceeded()V
    .locals 8

    const/4 v7, 0x1

    sget-object v4, Lcom/google/android/finsky/config/G;->passwordHelpUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "%email%"

    iget-object v5, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09009a

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090212

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v7, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "GaiaAuthFragment.errorDialog"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private failure()V
    .locals 1

    const v0, 0x7f09007b

    invoke-direct {p0, v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure(I)V

    return-void
.end method

.method private failure(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mFailedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mFailedCount:I

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v2, 0x1f6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    iget v2, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mFailedCount:I

    sget-object v1, Lcom/google/android/finsky/config/G;->passwordMaxFailedAttempts:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v2, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failWithMaxAttemptsExceeded()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    const v2, 0x7f0900a5

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/fragments/GaiaAuthFragment;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GaiaAuthFragment_showWarning"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "GaiaAuthFragment_authenticationChallenge"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private success()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

    iget v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAuthenticationType:I

    iget v2, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mFailedCount:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;->onSuccess(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    return-void
.end method

.method private verifyGaia(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;-><init>(Lcom/android/volley/RequestQueue;)V

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAccountName:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment$2;-><init>(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAuthRequest:Lcom/android/volley/Request;

    return-void
.end method

.method private verifyInput()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->verifyGaia(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->success()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->failure()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x109

    iget-object v2, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->verifyInput()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x10a

    iget-object v2, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;->onCancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080077
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "GaiaAuthFragment_authenticationChallenge"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "GaiaAuthFragment_showWarning"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mShowWarning:Z

    if-eqz p1, :cond_0

    const-string v0, "GaiaAuthFragment_retryCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mFailedCount:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const v8, 0x7f04007a

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget v8, v8, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    iput v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAuthenticationType:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-nez p3, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v9, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    const v8, 0x7f080052

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v1, v8, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    const v8, 0x7f080146

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mInput:Landroid/widget/EditText;

    new-instance v9, Lcom/google/android/finsky/fragments/GaiaAuthFragment$1;

    invoke-direct {v9, p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment$1;-><init>(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v8, 0x7f080148

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-boolean v8, v8, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v8, v8, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v8, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mShowWarning:Z

    if-eqz v8, :cond_2

    const v8, 0x7f080147

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f09024b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/finsky/config/G;->gaiaOptOutLearnMoreLink:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const v8, 0x7f080077

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v8, 0x7f090212

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f080078

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v8, 0x7f090076

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v7

    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAuthRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mAuthRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "GaiaAuthFragment_retryCount"

    iget v1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mFailedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setListener(Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mListener:Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;

    return-void
.end method
