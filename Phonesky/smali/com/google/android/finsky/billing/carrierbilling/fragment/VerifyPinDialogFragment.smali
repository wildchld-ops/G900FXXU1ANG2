.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;
.super Lcom/google/android/finsky/fragments/LoggingDialogFragment;
.source "VerifyPinDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/LoggingDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;
    .locals 3

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setCancelable(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x34a

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;->onVerifyCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;

    return-void
.end method
