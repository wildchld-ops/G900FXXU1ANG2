.class Lcom/android/keyguard/sec/KeyguardUnlockView$11;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showShortcutHelpText(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$800(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/high16 v0, 0x3f800000

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$800(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$11$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
