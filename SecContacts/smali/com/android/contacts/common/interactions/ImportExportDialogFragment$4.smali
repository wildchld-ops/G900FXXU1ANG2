.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$4;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$4;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
