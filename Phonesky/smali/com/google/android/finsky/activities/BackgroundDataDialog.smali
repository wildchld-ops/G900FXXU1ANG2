.class public Lcom/google/android/finsky/activities/BackgroundDataDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BackgroundDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismissExisting(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .param p0    # Landroid/support/v4/app/FragmentManager;

    const-string v2, "bg_data_dialog"

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static show(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/support/v4/app/FragmentManager;
    .param p1    # Landroid/app/Activity;

    const-string v1, "bg_data_dialog"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;-><init>()V

    const-string v1, "bg_data_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;

    invoke-interface {v1}, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;->onBackgroundDataNotEnabled()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090148

    new-instance v5, Lcom/google/android/finsky/activities/BackgroundDataDialog$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog$2;-><init>(Lcom/google/android/finsky/activities/BackgroundDataDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090149

    new-instance v5, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;-><init>(Lcom/google/android/finsky/activities/BackgroundDataDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f08012e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f090147

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-object v2
.end method
