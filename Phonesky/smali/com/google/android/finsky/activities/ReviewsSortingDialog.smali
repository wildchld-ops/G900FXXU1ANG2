.class public Lcom/google/android/finsky/activities/ReviewsSortingDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewsSortingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewsSortingDialog;)Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->getListener()Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/DfeReviews;)Lcom/google/android/finsky/activities/ReviewsSortingDialog;
    .locals 4

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsSortingDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sorting_type"

    invoke-static {p0}, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->convertDataSortTypeToDisplayIndex(Lcom/google/android/finsky/api/model/DfeReviews;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0901b0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {v2}, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->getAllDisplayStrings(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "sorting_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/google/android/finsky/activities/ReviewsSortingDialog$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog$1;-><init>(Lcom/google/android/finsky/activities/ReviewsSortingDialog;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
