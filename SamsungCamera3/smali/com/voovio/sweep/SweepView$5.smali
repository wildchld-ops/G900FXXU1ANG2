.class Lcom/voovio/sweep/SweepView$5;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;

.field private final synthetic val$oVoovio:Lcom/voovio/sweep/Voovio;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iput-object p2, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v2, 0x8d40

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$4(Lcom/voovio/sweep/SweepView;)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v2, v1}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->drawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v1, v0}, Lcom/voovio/sweep/SweepView;->access$5(Lcom/voovio/sweep/SweepView;Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {v2, v4}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I
    invoke-static {}, Lcom/voovio/sweep/SweepView;->access$6()I

    move-result v2

    invoke-static {v1, v2}, Lcom/voovio/sweep/SweepView;->access$7(Lcom/voovio/sweep/SweepView;I)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    invoke-static {v1, v0}, Lcom/voovio/sweep/SweepView;->access$8(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    iget v2, v2, Lcom/voovio/sweep/Voovio;->m_nMoveToPosition:I

    invoke-static {v1, v2}, Lcom/voovio/sweep/SweepView;->access$9(Lcom/voovio/sweep/SweepView;I)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    # invokes: Lcom/voovio/sweep/SweepView;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V
    invoke-static {v1, v2}, Lcom/voovio/sweep/SweepView;->access$10(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v2, v2, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    iget v2, v2, Lcom/voovio/sweep/Voovio;->m_nId:I

    if-nez v2, :cond_4

    :goto_0
    invoke-static {v1, v0}, Lcom/voovio/sweep/SweepView;->access$11(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    # invokes: Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$12(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    invoke-static {v0, v4}, Lcom/voovio/sweep/SweepView;->access$13(Lcom/voovio/sweep/SweepView;Z)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->startAutodriveIfNeeded()V
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$14(Lcom/voovio/sweep/SweepView;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_bRestore:Z
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$15(Lcom/voovio/sweep/SweepView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fCurFOV:F
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$16(Lcom/voovio/sweep/SweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$17(Lcom/voovio/sweep/SweepView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$17(Lcom/voovio/sweep/SweepView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$18(Lcom/voovio/sweep/SweepView;F)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$17(Lcom/voovio/sweep/SweepView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # invokes: Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V
    invoke-static {v0, v4}, Lcom/voovio/sweep/SweepView;->access$19(Lcom/voovio/sweep/SweepView;Z)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$20(Lcom/voovio/sweep/SweepView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$21(Lcom/voovio/sweep/SweepView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, v1, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$22(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/FrustumLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, v1, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    invoke-static {v0, v4}, Lcom/voovio/sweep/SweepView;->access$23(Lcom/voovio/sweep/SweepView;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$5;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$5;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    iget v2, v2, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    goto/16 :goto_0
.end method
