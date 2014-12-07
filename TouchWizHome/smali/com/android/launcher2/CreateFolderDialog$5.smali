.class Lcom/android/launcher2/CreateFolderDialog$5;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CreateFolderDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    check-cast p1, Landroid/app/Dialog;

    # invokes: Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V
    invoke-static {v0, p1}, Lcom/android/launcher2/CreateFolderDialog;->access$100(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
