.class Lcom/android/launcher2/MotionDialogOnFragment$2;
.super Ljava/lang/Object;
.source "MotionDialogOnFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MotionDialogOnFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MotionDialogOnFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MotionDialogOnFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    # getter for: Lcom/android/launcher2/MotionDialogOnFragment;->mReminder:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->access$000(Lcom/android/launcher2/MotionDialogOnFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_item_move"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    # getter for: Lcom/android/launcher2/MotionDialogOnFragment;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->access$100(Lcom/android/launcher2/MotionDialogOnFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    # getter for: Lcom/android/launcher2/MotionDialogOnFragment;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/launcher2/MotionDialogOnFragment;->access$100(Lcom/android/launcher2/MotionDialogOnFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v2, p0, Lcom/android/launcher2/MotionDialogOnFragment$2;->this$0:Lcom/android/launcher2/MotionDialogOnFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/launcher2/MotionDialogOnFragment;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2, v3}, Lcom/android/launcher2/MotionDialogOnFragment;->access$102(Lcom/android/launcher2/MotionDialogOnFragment;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
