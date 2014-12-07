.class Lcom/android/keyguard/KeyguardBackupPINView$1;
.super Ljava/lang/Object;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardBackupPINView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardBackupPINView;

.field final synthetic val$currentReason:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupPINView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    iput p2, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->val$currentReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->val$currentReason:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    # getter for: Lcom/android/keyguard/KeyguardBackupPINView;->mShowImeAtScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardBackupPINView;->access$000(Lcom/android/keyguard/KeyguardBackupPINView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardBackupPINView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    :cond_1
    return-void
.end method
