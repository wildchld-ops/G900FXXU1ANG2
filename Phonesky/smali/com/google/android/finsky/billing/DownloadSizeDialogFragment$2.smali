.class Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;
.super Ljava/lang/Object;
.source "DownloadSizeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;->this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$2;->this$0:Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    # invokes: Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->getListener()Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;
    invoke-static {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->access$000(Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;->onDownloadCancel()V

    return-void
.end method
