.class public Lcom/android/launcher2/DisableAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DisableAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisableAppConfirmationDialog"

.field private static isUninstall:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "DisableAppConfirm"


# instance fields
.field private mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    invoke-direct {v0}, Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    return-void
.end method

.method static createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V
    .locals 3

    invoke-static {p2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/launcher2/DisableAppConfirmationDialog;

    invoke-direct {v1}, Lcom/android/launcher2/DisableAppConfirmationDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    const-string v2, "DisableAppConfirm"

    invoke-virtual {v1, p2, v2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sput-boolean p3, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "DisableAppConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "DisableAppConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->saveToastPopupForDisableDialog(Ljava/lang/Boolean;)V

    :cond_0
    sget-object v2, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "This App can not be disabled"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    sget-boolean v2, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DisableAppConfirmationDialog"

    const-string v3, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Not installed with permissions needed for uninstalling"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "DisableAppConfirmationDialog"

    const-string v3, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Unable to install, please try again !"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f03000a

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0e0026

    invoke-virtual {p0, v6}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e0046

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e006f

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0027

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-boolean v6, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0029

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e0028

    invoke-virtual {p0, v6}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e002a

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v5, 0x0

    const v6, 0x7f080012

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isDialogChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method
