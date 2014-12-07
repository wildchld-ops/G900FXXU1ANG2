.class public Lcom/google/android/finsky/activities/AccessRestrictedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AccessRestrictedActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static isLimitedOrEduUser()Z
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getUsers()Lcom/google/android/finsky/utils/Users;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/Users;->isLimitedUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/EduDeviceHelper;->isEduDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/config/G;->debugLimitedUserState:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showLimitedPurchaseUI(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/AccessRestrictedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AccessRestrictedActivity.messageId"

    const v2, 0x7f090126

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showLimitedUserUI(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/AccessRestrictedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AccessRestrictedActivity.messageId"

    const v2, 0x7f090125

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->finish()V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccessRestrictedActivity.messageId"

    const v4, 0x7f090125

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090212

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x134

    move v4, v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "access_restricted_dialog"

    invoke-virtual {v7, v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
