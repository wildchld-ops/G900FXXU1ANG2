.class Lcom/google/android/finsky/activities/ReviewsSortingDialog$1;
.super Ljava/lang/Object;
.source "ReviewsSortingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewsSortingDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsSortingDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsSortingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsSortingDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewsSortingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsSortingDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewsSortingDialog;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->dismiss()V

    invoke-static {p2}, Lcom/google/android/finsky/utils/ReviewsSortingUtils;->convertDisplayIndexToDataSortType(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsSortingDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewsSortingDialog;

    # invokes: Lcom/google/android/finsky/activities/ReviewsSortingDialog;->getListener()Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->access$000(Lcom/google/android/finsky/activities/ReviewsSortingDialog;)Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;->onSortingChanged(I)V

    return-void
.end method
