.class Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    # invokes: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$800(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    return-void
.end method
