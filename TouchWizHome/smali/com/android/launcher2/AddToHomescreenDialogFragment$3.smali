.class Lcom/android/launcher2/AddToHomescreenDialogFragment$3;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.themechooser"

    const-string v2, "com.sec.android.app.themechooser.ThemeListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
