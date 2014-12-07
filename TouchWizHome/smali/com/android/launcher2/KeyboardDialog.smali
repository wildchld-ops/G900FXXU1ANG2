.class public Lcom/android/launcher2/KeyboardDialog;
.super Landroid/app/DialogFragment;
.source "KeyboardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/KeyboardDialog$Listener;
    }
.end annotation


# static fields
.field public static final CREATE_REQ_SRC_INVALID:I = 0x0

.field private static final CREATE_REQ_SRC_KEY:Ljava/lang/String; = "FOLDER_CREATE_REQ_SRC_KEY"

.field private static final TITLE_KEY:Ljava/lang/String; = "TITLE_KEY"

.field private static final sFragmentTag:Ljava/lang/String;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field mListener:Lcom/android/launcher2/KeyboardDialog$Listener;

.field mTitle:Ljava/lang/String;

.field private mWho:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/KeyboardDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/KeyboardDialog;->mWho:I

    iput-object v1, p0, Lcom/android/launcher2/KeyboardDialog;->mListener:Lcom/android/launcher2/KeyboardDialog$Listener;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/KeyboardDialog;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/KeyboardDialog$Listener;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # Lcom/android/launcher2/KeyboardDialog$Listener;
    .param p2    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher2/KeyboardDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/KeyboardDialog;

    invoke-direct {v0}, Lcom/android/launcher2/KeyboardDialog;-><init>()V

    invoke-direct {v0, p1, p2}, Lcom/android/launcher2/KeyboardDialog;->init(Lcom/android/launcher2/KeyboardDialog$Listener;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher2/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0    # Landroid/app/FragmentManager;

    sget-object v1, Lcom/android/launcher2/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private init(Lcom/android/launcher2/KeyboardDialog$Listener;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/KeyboardDialog$Listener;
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher2/KeyboardDialog;->mListener:Lcom/android/launcher2/KeyboardDialog$Listener;

    iput-object p2, p0, Lcom/android/launcher2/KeyboardDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/KeyboardDialog;->mWho:I

    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0    # Landroid/app/FragmentManager;

    sget-object v0, Lcom/android/launcher2/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

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
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/KeyboardDialog;->mListener:Lcom/android/launcher2/KeyboardDialog$Listener;

    iget-object v1, p0, Lcom/android/launcher2/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher2/KeyboardDialog$Listener;->confirmed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/KeyboardDialog;->mListener:Lcom/android/launcher2/KeyboardDialog$Listener;

    invoke-interface {v0}, Lcom/android/launcher2/KeyboardDialog$Listener;->cancelled()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f080031

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/launcher2/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/launcher2/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v4, "FOLDER_CREATE_REQ_SRC_KEY"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/KeyboardDialog;->mWho:I

    const-string v1, ""

    iget-object v4, p0, Lcom/android/launcher2/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/android/launcher2/KeyboardDialog;->mWho:I

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/launcher2/KeyboardDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e000c

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e000d

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_1
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FOLDER_CREATE_REQ_SRC_KEY"

    iget v1, p0, Lcom/android/launcher2/KeyboardDialog;->mWho:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE_KEY"

    iget-object v1, p0, Lcom/android/launcher2/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
