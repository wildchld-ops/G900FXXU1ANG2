.class Lcom/android/settings/motion/MotionTutorialSettings$7;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionTutorialSettings;->showUseRingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/MotionTutorialSettings$7;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$7;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/motion/MotionTutorialSettings;->access$1000(Lcom/android/settings/motion/MotionTutorialSettings;Z)V

    return-void
.end method
