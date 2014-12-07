.class public Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewsFilterOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;
    }
.end annotation


# instance fields
.field private final mChecked:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)[Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->getListener()Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(ZZ)Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;
    .locals 3

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "filterByVersion"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "filterByDevice"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0901b4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z

    array-length v4, v4

    new-array v3, v4, [Ljava/lang/String;

    const v4, 0x7f0901b6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0901b5

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z

    const-string v5, "filterByVersion"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v6

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z

    const-string v5, "filterByDevice"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v7

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z

    new-instance v5, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$1;-><init>(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    new-instance v5, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;-><init>(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
