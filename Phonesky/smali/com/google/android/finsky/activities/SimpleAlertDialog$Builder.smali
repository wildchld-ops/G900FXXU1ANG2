.class public Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
.super Ljava/lang/Object;
.source "SimpleAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/SimpleAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mTarget:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mTarget:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->configureDialog(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V

    return-object v0
.end method

.method public configureDialog(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mTarget:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mTarget:Landroid/support/v4/app/Fragment;

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "extra_arguments"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "target_request_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "cancel_on_touch_outside"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    if-nez p5, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p5

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "log_account"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "impression_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "impression_cookie"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "click_event_type_positive"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "click_event_type_negative"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setLayoutId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "layoutId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "messageHtml"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "negative_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "positive_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTitleId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "title_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setViewConfiguration(Landroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->mArguments:Landroid/os/Bundle;

    const-string v1, "config_arguments"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
