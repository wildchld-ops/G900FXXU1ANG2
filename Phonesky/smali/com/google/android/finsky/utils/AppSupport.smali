.class public Lcom/google/android/finsky/utils/AppSupport;
.super Ljava/lang/Object;
.source "AppSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/AppSupport$RefundListener;,
        Lcom/google/android/finsky/utils/AppSupport$RefundResult;
    }
.end annotation


# direct methods
.method public static showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 4

    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v2, 0x7f09021c

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090212

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    const-string v2, "refund_failure"

    invoke-virtual {v0, p0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;ZZZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v7, "uninstall_confirm"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const v6, 0x7f090212

    const v5, 0x7f090076

    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    const v4, 0x7f090153

    :goto_1
    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v7, "package_name"

    invoke-virtual {v2, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v1, p1, v7, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    const-string v7, "uninstall_confirm"

    invoke-virtual {v0, v3, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const v4, 0x7f090155

    const v6, 0x7f090118

    const v5, 0x7f090119

    goto :goto_1

    :cond_2
    const v4, 0x7f090154

    goto :goto_1

    :cond_3
    const v4, 0x7f090156

    goto :goto_1
.end method

.method public static silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V
    .locals 6

    invoke-interface {p2}, Lcom/google/android/finsky/utils/AppSupport$RefundListener;->onRefundStart()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/library/RevokeListenerWrapper;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/utils/AppSupport$1;

    invoke-direct {v5, p2, p0}, Lcom/google/android/finsky/utils/AppSupport$1;-><init>(Lcom/google/android/finsky/utils/AppSupport$RefundListener;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/finsky/library/RevokeListenerWrapper;-><init>(Lcom/google/android/finsky/library/LibraryReplicators;Landroid/accounts/Account;Lcom/android/volley/Response$Listener;)V

    new-instance v3, Lcom/google/android/finsky/utils/AppSupport$2;

    invoke-direct {v3, p2, p0}, Lcom/google/android/finsky/utils/AppSupport$2;-><init>(Lcom/google/android/finsky/utils/AppSupport$RefundListener;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method
