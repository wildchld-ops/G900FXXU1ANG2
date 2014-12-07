.class Lcom/android/launcher2/CreateFolderDialog$1;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iput-object p2, p0, Lcom/android/launcher2/CreateFolderDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$1;->val$dialog:Landroid/app/Dialog;

    # invokes: Lcom/android/launcher2/CreateFolderDialog;->doAddMoreApps(Landroid/app/Dialog;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/CreateFolderDialog;->access$000(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    return-void
.end method
