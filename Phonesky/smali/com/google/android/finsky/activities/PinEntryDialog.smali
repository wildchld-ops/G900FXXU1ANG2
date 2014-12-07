.class public Lcom/google/android/finsky/activities/PinEntryDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "PinEntryDialog.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mMatchPin:Ljava/lang/String;

.field private mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

.field private mPinEntryView:Landroid/widget/EditText;

.field private mPinWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0x137

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    new-instance v0, Lcom/google/android/finsky/activities/PinEntryDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PinEntryDialog$1;-><init>(Lcom/google/android/finsky/activities/PinEntryDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/PinEntryDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;IILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PinEntryDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PinEntryDialog-title-string-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PinEntryDialog-prompt-string-id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PinEntryDialog-pin-to-match"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PinEntryDialog-extra-params"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private getUserPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setPinResult(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "PinEntryDialog-result-pin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PinEntryDialog-extra-params"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PinEntryDialog-extra-params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private syncOkButtonState()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v5, -0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0400d1

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "PinEntryDialog-title-string-id"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "PinEntryDialog-prompt-string-id"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "PinEntryDialog-pin-to-match"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    const v4, 0x7f0801c1

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0801c2

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const v4, 0x7f080076

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/PinEntryDialog;->setTitle(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v5, 0x7f090237

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v5, 0x7f090238

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v4, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x103

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 6

    const/16 v5, 0x1f5

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v2, 0x102

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const v2, 0x7f09023f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090241

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/PinEntryDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setPinResult(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V

    return-void
.end method
