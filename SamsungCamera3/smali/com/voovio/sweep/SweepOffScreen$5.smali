.class Lcom/voovio/sweep/SweepOffScreen$5;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepOffScreen;->setGLViewportAndProjection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepOffScreen;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepOffScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen$5;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x3f800000

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen$5;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v1, v1, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES11;->glViewport(IIII)V

    const/16 v1, 0x1701

    invoke-static {v1}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    const/high16 v1, -0x40800000

    invoke-static {v5, v1, v5}, Landroid/opengl/GLES11;->glScalef(FFF)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen$5;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v1, v1, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v1

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getRatio()F

    move-result v2

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen$5;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v3, v3, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen$5;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v4, v4, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    invoke-static {v1, v2, v3, v4}, Lcom/voovio/gles/GLESUtil;->gluPerspective(FFFF)V

    return-void
.end method
