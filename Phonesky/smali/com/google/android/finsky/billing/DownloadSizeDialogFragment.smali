.class public Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DownloadSizeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getListener()Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;

    goto :goto_0
.end method

.method public static makeArguments(ZZZ)Landroid/os/Bundle;
    .locals 2
    .param p0    # Z
    .param p1    # Z
    .param p2    # Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "setWifiOnly"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "showWifiOnly"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "onMobileNetwork"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;
    .locals 3
    .param p0    # Landroid/support/v4/app/Fragment;
    .param p1    # Landroid/os/Bundle;

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "targetFragment must implement DownloadSizeDialog.Listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getListener()Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;->onDownloadCancel()V

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .param p1    # Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v14, "showWifiOnly"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v14, "setWifiOnly"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v14, "onMobileNetwork"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v13, Landroid/view/ContextThemeWrapper;

    const v14, 0x7f0c0055

    invoke-direct {v13, v5, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f090225

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f04005e

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v14, 0x7f08010b

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v11, :cond_2

    const v6, 0x7f090226

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    const v14, 0x7f08010c

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v11, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-nez p1, :cond_0

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f09022b

    new-instance v15, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v3, v9}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$1;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;ZLandroid/widget/CheckBox;Z)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f090076

    new-instance v15, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v12, Landroid/content/Intent;

    const-string v14, "android.settings.WIFI_SETTINGS"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/high16 v15, 0x10000

    invoke-virtual {v14, v12, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    const v14, 0x7f09022a

    new-instance v15, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$3;-><init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    return-object v14

    :cond_2
    if-eqz v8, :cond_3

    const v6, 0x7f090227

    :goto_1
    goto :goto_0

    :cond_3
    const v6, 0x7f090228

    goto :goto_1
.end method
