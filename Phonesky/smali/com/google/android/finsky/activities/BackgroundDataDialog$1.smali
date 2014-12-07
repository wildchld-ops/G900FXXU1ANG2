.class Lcom/google/android/finsky/activities/BackgroundDataDialog$1;
.super Ljava/lang/Object;
.source "BackgroundDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/BackgroundDataDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/BackgroundDataDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;->this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;->this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;->onBackgroundDataNotEnabled()V

    return-void
.end method
