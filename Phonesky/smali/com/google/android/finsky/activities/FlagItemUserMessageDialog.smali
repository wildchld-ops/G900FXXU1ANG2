.class public Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FlagItemUserMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
    }
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;)Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getListener()Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method private getListener()Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;
    .locals 3

    new-instance v1, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "prompt_string_res_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "prompt_string_res_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz p1, :cond_0

    move-object v6, p1

    :goto_0
    const-string v7, "previous_message"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040071

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f080138

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$1;

    invoke-direct {v8, p0, v2}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$1;-><init>(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;Landroid/widget/TextView;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    invoke-virtual {v1, v7, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    :cond_0
    move-object v6, v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "previous_message"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const v3, 0x7f080138

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;

    invoke-direct {v3, p0, v2}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;-><init>(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
