.class Lcom/android/keyguard/KeyguardBackupPINView$4;
.super Ljava/lang/Object;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardBackupPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupPINView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupPINView$4;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBackupPINView$4;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    # getter for: Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupPINView;->access$300(Lcom/android/keyguard/KeyguardBackupPINView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardBackupPINView$4;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    # getter for: Lcom/android/keyguard/KeyguardBackupPINView;->mDummyEmergencyButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardBackupPINView;->access$200(Lcom/android/keyguard/KeyguardBackupPINView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/keyguard/sec/EmergencyCircleView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBackupPINView$4;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    # getter for: Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupPINView;->access$100(Lcom/android/keyguard/KeyguardBackupPINView;)Lcom/android/keyguard/EmergencyButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/EmergencyButton;->updateBackgroundResourceWithRetainedPadding(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBackupPINView$4;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    # getter for: Lcom/android/keyguard/KeyguardBackupPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupPINView;->access$100(Lcom/android/keyguard/KeyguardBackupPINView;)Lcom/android/keyguard/EmergencyButton;

    move-result-object v1

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Lcom/android/keyguard/EmergencyButton;->updateBackgroundResourceWithRetainedPadding(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
