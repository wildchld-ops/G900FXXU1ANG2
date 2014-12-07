.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDummyEmergencyButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/keyguard/sec/EmergencyCircleView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/CarrierText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/MSimCarrierText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/CarrierText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/MSimCarrierText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
