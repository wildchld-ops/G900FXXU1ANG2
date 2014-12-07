.class Lcom/android/launcher2/MotionDialogOffFragment$1;
.super Ljava/lang/Object;
.source "MotionDialogOffFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MotionDialogOffFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MotionDialogOffFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MotionDialogOffFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MotionDialogOffFragment$1;->this$0:Lcom/android/launcher2/MotionDialogOffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MotionDialogOffFragment$1;->this$0:Lcom/android/launcher2/MotionDialogOffFragment;

    # getter for: Lcom/android/launcher2/MotionDialogOffFragment;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/launcher2/MotionDialogOffFragment;->access$000(Lcom/android/launcher2/MotionDialogOffFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MotionDialogOffFragment$1;->this$0:Lcom/android/launcher2/MotionDialogOffFragment;

    # getter for: Lcom/android/launcher2/MotionDialogOffFragment;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/launcher2/MotionDialogOffFragment;->access$000(Lcom/android/launcher2/MotionDialogOffFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/android/launcher2/MotionDialogOffFragment$1;->this$0:Lcom/android/launcher2/MotionDialogOffFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/MotionDialogOffFragment;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/MotionDialogOffFragment;->access$002(Lcom/android/launcher2/MotionDialogOffFragment;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
