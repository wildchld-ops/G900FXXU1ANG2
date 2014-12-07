.class public final Lcom/voovio/sweep/SweepView;
.super Landroid/widget/RelativeLayout;
.source "SweepView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/voovio/sweep/ResourceManager$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    }
.end annotation


# static fields
.field private static OPERATION_FADE:I = 0x0

.field private static OPERATION_NAVIGATION:I = 0x0

.field private static OPERATION_TRANSITION:I = 0x0

.field private static OPERATION_ZOOM:I = 0x0

.field private static TRANSITION_FINISH_FRAMES:I = 0x0

.field static final m_movAveragePeriod:F = 40.0f

.field static final smoothFactor:F = 0.1f


# instance fields
.field private m_aTransitionPositions:[I

.field private m_aVoovioPositions:[I

.field private m_aVoovioTotals:[F

.field private m_bAutoDrive:Z

.field private m_bAvailableDirections:[Z

.field private m_bFirstDraw:Z

.field private m_bGLViewReady:Z

.field private m_bRestore:Z

.field private m_bStart:Z

.field private m_bWillFadeToNextVoovio:Z

.field private m_fAngleStepX:F

.field private m_fAngleStepY:F

.field private m_fAutodriveDirection:F

.field private m_fAutodriveFOV:F

.field private m_fAutodriveVelocityForward:F

.field private m_fAutodriveVelocitySideward:F

.field private m_fCurFOV:F

.field private m_fFovStep:F

.field private m_fMaxFOV:F

.field private m_fMinFOV:F

.field private m_fTransitionAccumD:F

.field private m_fTransitionCurVel:F

.field private m_fTransitionFactor:F

.field private m_fTransitionMatrices:[[F

.field private m_fVelocityForward:F

.field private m_fVelocityRightward:F

.field private m_fVelocityUpward:F

.field private m_fVoovioMatrices:[[F

.field m_lastRealTimeMeasurement_ms:J

.field m_movAverageDeltaTime_ms:F

.field private m_nAutodriveOnStart:I

.field private m_nCurrentPosition:I

.field private m_nFadeCurStep:I

.field private m_nFadeSteps:I

.field private m_nLastPostedPosition:I

.field private m_nOperation:I

.field private m_nZoomCurStep:I

.field private m_nZoomSteps:I

.field private m_oActivityIndicator:Landroid/widget/ProgressBar;

.field private m_oAutodriveRunnable:Ljava/lang/Runnable;

.field m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oCurVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oDepthRenderBufferIDs:[I

.field private m_oFrameBuffersIDs:[I

.field private m_oGLView:Landroid/opengl/GLSurfaceView;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oImageChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

.field private m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oRMLock:Ljava/lang/Object;

.field private m_oRenderLock:Ljava/lang/Object;

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field private m_oRotation:Lcom/voovio/sweep/Rotation;

.field private m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

.field private m_oSnapshot:Lcom/voovio/gles/Snapshot;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

.field private m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

.field private m_oTransition:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

.field private m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

.field private m_pt0:Lcom/voovio/voo3d/data/Vector3;

.field private m_pt1:Lcom/voovio/voo3d/data/Vector3;

.field private m_ptPos:Lcom/voovio/voo3d/data/Vector3;

.field m_smoothedDeltaRealTime_ms:F

.field private m_vDir:Lcom/voovio/voo3d/data/Vector3;

.field m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    const/4 v0, 0x1

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    const/4 v0, 0x2

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_TRANSITION:I

    const/4 v0, 0x3

    sput v0, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    const/16 v0, 0xc

    sput v0, Lcom/voovio/sweep/SweepView;->TRANSITION_FINISH_FRAMES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;

    const/4 v5, -0x2

    const/high16 v3, 0x42480000

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    iput-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iput-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    sget v0, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    const/16 v0, 0xc

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nFadeSteps:I

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    iput-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    const/high16 v0, 0x41700000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const/16 v0, 0x8

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    const/high16 v0, 0x418c0000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    iput-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x101007a

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/voovio/sweep/ResourceManager;

    invoke-direct {v0}, Lcom/voovio/sweep/ResourceManager;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/ResourceManager;->setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V

    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/high16 v4, 0x3f000000

    const v5, 0x461c4000

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/sweep/FrustumLimiter;

    invoke-direct {v0}, Lcom/voovio/sweep/FrustumLimiter;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    new-instance v0, Lcom/voovio/sweep/Rotation;

    invoke-direct {v0}, Lcom/voovio/sweep/Rotation;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/sweep/SweepView$1;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$1;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$2;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$2;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$3;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$3;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$4;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$4;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    return v0
.end method

.method static synthetic access$10(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    return-void
.end method

.method static synthetic access$11(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    return-void
.end method

.method static synthetic access$12(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void
.end method

.method static synthetic access$13(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    return-void
.end method

.method static synthetic access$14(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->startAutodriveIfNeeded()V

    return-void
.end method

.method static synthetic access$15(Lcom/voovio/sweep/SweepView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    return v0
.end method

.method static synthetic access$16(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return v0
.end method

.method static synthetic access$17(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    return v0
.end method

.method static synthetic access$18(Lcom/voovio/sweep/SweepView;F)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return-void
.end method

.method static synthetic access$19(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/voovio/sweep/SweepView;)[I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    return-object v0
.end method

.method static synthetic access$20(Lcom/voovio/sweep/SweepView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$21(Lcom/voovio/sweep/SweepView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$22(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/FrustumLimiter;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    return-object v0
.end method

.method static synthetic access$23(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    return-void
.end method

.method static synthetic access$24(Lcom/voovio/sweep/SweepView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$25(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void
.end method

.method static synthetic access$26(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToTransition(Lcom/voovio/sweep/Transition;)V

    return-void
.end method

.method static synthetic access$27(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->startFrom(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/voovio/sweep/SweepView;Lcom/voovio/voo3d/view/Viewport;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Lcom/voovio/voo3d/view/Viewport;)V

    return-void
.end method

.method static synthetic access$4(Lcom/voovio/sweep/SweepView;)[I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    return-object v0
.end method

.method static synthetic access$5(Lcom/voovio/sweep/SweepView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->drawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic access$6()I
    .locals 1

    sget v0, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    return v0
.end method

.method static synthetic access$7(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    return-void
.end method

.method static synthetic access$8(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    return-void
.end method

.method static synthetic access$9(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    return-void
.end method

.method private cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V
    .locals 16
    .param p1    # Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v3, v11, v12

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v9

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v10, v11, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v6, v11, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget v11, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v12, 0x3dcccccd

    iget v13, v10, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    const v13, 0x3dcccccd

    iget v14, v10, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const v14, 0x3dcccccd

    iget v15, v10, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-virtual {v7, v11, v12, v13}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    :goto_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v11, v11, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    if-ge v1, v11, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v12, v12, v1

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v13, v1, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v13, v13, v1

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float v8, v11, v12

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v3, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    neg-float v11, v8

    iget v12, v3, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    mul-float/2addr v11, v12

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v12, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v14, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v12, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v13, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v14, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v9}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v11, v11, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_2

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v10, v11, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v6, v11, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget v11, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v12, 0x3dcccccd

    iget v13, v10, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v12, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    const v13, 0x3dcccccd

    iget v14, v10, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iget v13, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const v14, 0x3dcccccd

    iget v15, v10, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    invoke-virtual {v7, v11, v12, v13}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v5, v11, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget v11, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v12, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    iput v11, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v11, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v12, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    iput v11, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v11, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v12, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v13, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    iput v11, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v12, 0x1

    aget-object v4, v11, v12

    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v4, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v11, v4, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v11, v9}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_1
.end method

.method private computeAutodriveVelocity()V
    .locals 14

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    const/high16 v10, -0x40800000

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    :goto_0
    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    cmpl-float v9, v9, v1

    if-eqz v9, :cond_0

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const/16 v9, 0xc

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v9

    sub-float v9, v1, v9

    iget v10, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v10, v10, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v11, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v11, v11, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v9

    const v10, 0x42652ee0

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v10, v10, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v11, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v9

    const v10, 0x42652ee0

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    sget v9, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v11, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v10, v9}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_0
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v10, 0x0

    aget-object v3, v9, v10

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    :goto_2
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float v9, v0, v9

    :goto_3
    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v4, v9, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v8, v9, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v10, 0x3dcccccd

    iget v11, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    const v11, 0x3dcccccd

    iget v12, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget v11, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const v12, 0x3dcccccd

    iget v13, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v5, v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget v9, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v10, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v9, v10

    iget v10, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v11, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v10, v11

    iget v11, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v12, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v11, v12

    invoke-virtual {v7, v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v9, v9, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v9}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_7

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v10, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v10, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v10, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    :goto_4
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_1
    return-void

    :cond_2
    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_3

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_7
    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    const/4 v10, 0x0

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    const/4 v10, 0x0

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    const/4 v10, 0x0

    iput v10, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_4
.end method

.method private computeCurrentPosition()V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-nez v8, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    :goto_1
    iget-object v8, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v8, v9

    iget v2, v5, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v8, v8, v2

    iput v8, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_1

    const/4 v1, 0x0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v8}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    if-eqz v3, :cond_0

    iget v8, v3, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v9, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v8, v9, :cond_0

    iget-object v8, v3, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v8, v6}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_0
    invoke-virtual {v4, v6}, Lcom/voovio/sweep/Transition;->getAngleToV1(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    aget v9, v9, v2

    div-float v1, v8, v9

    :goto_2
    invoke-static {v6}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v8, v8, v2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v10, v10, v2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    :cond_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v8, v8, Lcom/voovio/sweep/Rotation;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    check-cast v8, Lcom/voovio/sweep/Rotation;

    iget-object v3, v8, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto :goto_0

    :cond_4
    iget-object v8, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    move-object v5, v8

    goto/16 :goto_1

    :cond_5
    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v8}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    if-eqz v3, :cond_6

    iget v8, v3, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v9, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v8, v9, :cond_6

    iget-object v8, v3, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v8, v6}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_6
    iget-object v8, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v8, v8, v10

    if-nez v8, :cond_7

    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    :goto_3
    invoke-virtual {v6, v7}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v8

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    aget v9, v9, v2

    div-float v1, v8, v9

    goto :goto_2

    :cond_7
    iget-object v8, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v8, v8, v10

    aget-object v8, v8, v10

    iget-object v7, v8, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_3
.end method

.method private computeTransitionMatrices()V
    .locals 4

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    :goto_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    goto :goto_1
.end method

.method private computeVoovioMatrices()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v2, v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    :cond_1
    return-void
.end method

.method private computeVoovioPositions()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v14, v14, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v14, v7, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v14, v7, -0x1

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    new-array v14, v7, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    add-int/lit8 v15, v7, -0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    const/high16 v5, 0x42700000

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v14, v7, -0x1

    if-lt v6, v14, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v14, v14, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/voovio/sweep/Voovio;

    iget-object v14, v10, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v15, 0x1

    aget-object v9, v14, v15

    iget-object v14, v10, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v15, 0x0

    aget-object v8, v14, v15

    invoke-virtual {v8}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    iget-object v14, v9, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v14}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v14

    :goto_2
    iput-object v14, v8, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    if-eqz v2, :cond_1

    iget-object v14, v9, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v15, v8, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v14, v15}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v8, v10, v15, v0}, Lcom/voovio/sweep/Rotation;->compute_v2(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;)V

    iget v14, v8, Lcom/voovio/sweep/Transition;->m_fAngle_v1_vt:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    double-to-float v3, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    iget v15, v8, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    double-to-float v15, v15

    aput v15, v14, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    move-object/from16 v17, v0

    aget v17, v17, v6

    mul-float v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    aput v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v15, v15, v6

    mul-float v16, v5, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    aput v15, v14, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    iget-object v14, v10, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_2

    :cond_4
    if-nez v9, :cond_5

    iget-object v11, v10, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    :goto_4
    iget-object v14, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v14}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v14, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v14}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual {v12}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v14

    const/high16 v15, 0x3f800000

    sub-float v4, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    invoke-virtual {v13}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v15

    aput v15, v14, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    move-object/from16 v16, v0

    aget v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    move-object/from16 v17, v0

    aget v17, v17, v6

    mul-float v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    aput v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v15, v15, v6

    mul-float v16, v5, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    aput v15, v14, v6

    goto/16 :goto_3

    :cond_5
    iget-object v14, v9, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget-object v11, v14, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_4
.end method

.method private createSnapshot(IIII)V
    .locals 9
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const v8, 0x8d41

    const/4 v7, 0x1

    const v6, 0x8d40

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v2, v2, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    int-to-float v3, p3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v2, v2, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->y:F

    int-to-float v3, p4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->destroySnapshot()V

    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-nez v2, :cond_4

    new-instance v2, Lcom/voovio/gles/Snapshot;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/voovio/gles/Snapshot;-><init>(IIII)V

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v2}, Lcom/voovio/gles/Snapshot;->Create()V

    new-array v2, v7, [I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    invoke-static {v7, v2, v5}, Landroid/opengl/GLES11Ext;->glGenRenderbuffersOES(I[II)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    aget v2, v2, v5

    invoke-static {v8, v2}, Landroid/opengl/GLES11Ext;->glBindRenderbufferOES(II)V

    const v2, 0x81a5

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v3, v3, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v4, v4, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v4, v4, Lcom/voovio/geometry/Point;->y:F

    float-to-int v4, v4

    invoke-static {v8, v2, v3, v4}, Landroid/opengl/GLES11Ext;->glRenderbufferStorageOES(IIII)V

    invoke-static {v8, v5}, Landroid/opengl/GLES11Ext;->glBindRenderbufferOES(II)V

    new-array v2, v7, [I

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    invoke-static {v7, v2, v5}, Landroid/opengl/GLES11Ext;->glGenFramebuffersOES(I[II)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    aget v2, v2, v5

    invoke-static {v6, v2}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    const v2, 0x8ce0

    const/16 v3, 0xde1

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v4, v4, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    aget v4, v4, v5

    invoke-static {v6, v2, v3, v4, v5}, Landroid/opengl/GLES11Ext;->glFramebufferTexture2DOES(IIIII)V

    const v2, 0x8d00

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    aget v3, v3, v5

    invoke-static {v6, v2, v8, v3}, Landroid/opengl/GLES11Ext;->glFramebufferRenderbufferOES(IIII)V

    invoke-static {v6, v5}, Landroid/opengl/GLES11Ext;->glBindFramebufferOES(II)V

    invoke-static {}, Landroid/opengl/GLES11;->glGetError()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "SweepView::Snapshot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GLES11 GLError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v6}, Landroid/opengl/GLES11Ext;->glCheckFramebufferStatusOES(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_2

    const-string v2, "SweepView::Snapshot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GLES11Ext Status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v2, p1, p2}, Lcom/voovio/gles/Snapshot;->setTextureSize(II)V

    goto :goto_0
.end method

.method private destroySnapshot()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v0}, Lcom/voovio/gles/Snapshot;->Destroy()V

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES11;->glDeleteBuffers(I[II)V

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES11;->glDeleteBuffers(I[II)V

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    goto :goto_0
.end method

.method private destroySnapshotWithoutOpenGLContext()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v0}, Lcom/voovio/gles/Snapshot;->DestroyWithoutOpenGLContext()V

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oFrameBuffersIDs:[I

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oDepthRenderBufferIDs:[I

    goto :goto_0
.end method

.method private drawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;

    const/16 v8, 0x4100

    invoke-static {v8}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v8, 0x1700

    invoke-static {v8}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glLoadMatrixf([FI)V

    const/4 v0, 0x1

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v8, v8, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/Voovio;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v8, v8, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    iget-boolean v8, v6, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v8, :cond_9

    iget-boolean v8, v7, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v8, :cond_9

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v8}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES11;->glEnable(I)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    const/high16 v8, 0x3f800000

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0x100

    invoke-static {v8}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v8, 0x302

    const/16 v9, 0x303

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    const/high16 v8, 0x3f800000

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v7, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0x100

    invoke-static {v8}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v8, 0x302

    const/16 v9, 0x303

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    const/high16 v8, 0x3f800000

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES11;->glDisable(I)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_8

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-boolean v8, v8, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v8, v8, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v9, 0x0

    aget-object v2, v8, v9

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v8, v8, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v9, 0x1

    aget-object v4, v8, v9

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    move-object v3, v8

    :goto_2
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v4, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    move-object v5, v8

    :goto_3
    iget-boolean v8, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v8, :cond_d

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v8, v3, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v8, :cond_3

    :cond_1
    if-nez v3, :cond_2

    if-eqz v5, :cond_2

    iget-boolean v8, v5, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v8, :cond_3

    :cond_2
    if-eqz v5, :cond_d

    iget-boolean v8, v5, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v8, :cond_d

    if-eqz v3, :cond_d

    iget-boolean v8, v3, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v8, :cond_d

    :cond_3
    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES11;->glEnable(I)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v9, v10}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0x100

    invoke-static {v8}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v8, 0x302

    const/16 v9, 0x303

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    if-eqz v5, :cond_4

    const/high16 v8, 0x3f800000

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v5, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    :cond_4
    if-eqz v3, :cond_5

    const/high16 v8, 0x3f800000

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_fVoovioMatrices:[[F

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v3, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    :cond_5
    const/16 v8, 0x100

    invoke-static {v8}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v8, 0x302

    const/16 v9, 0x303

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v9, v10}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES11;->glDisable(I)V

    :goto_4
    iget-boolean v8, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v9, Lcom/voovio/sweep/SweepView$8;

    invoke-direct {v9, p0}, Lcom/voovio/sweep/SweepView$8;-><init>(Lcom/voovio/sweep/SweepView;)V

    const-wide/16 v10, 0x10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    :cond_7
    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v9, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    if-ne v8, v9, :cond_8

    const/high16 v8, 0x3f800000

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    int-to-float v9, v9

    iget v10, p0, Lcom/voovio/sweep/SweepView;->m_nFadeSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float v1, v8, v9

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oSnapshot:Lcom/voovio/gles/Snapshot;

    invoke-virtual {v8, p1, v1}, Lcom/voovio/gles/Snapshot;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/high16 v8, 0x3f800000

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v6, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0x100

    invoke-static {v8}, Landroid/opengl/GLES11;->glClear(I)V

    const/high16 v8, 0x3f800000

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v7, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0x100

    invoke-static {v8}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES11;->glEnable(I)V

    const/16 v8, 0x302

    const/16 v9, 0x303

    invoke-static {v8, v9}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    const/high16 v8, 0x3f800000

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionMatrices:[[F

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v6, p1, v8, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES11;->glDisable(I)V

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_d
    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES11;->glDisable(I)V

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v9, 0x3f800000

    invoke-virtual {v8, p1, v9}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto/16 :goto_4
.end method

.method private executeMoveToTransition(Lcom/voovio/sweep/Transition;)V
    .locals 9
    .param p1    # Lcom/voovio/sweep/Transition;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eq p1, v0, :cond_1

    iget-object v0, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v7, v0, :cond_0

    iget v0, v7, Lcom/voovio/sweep/Voovio;->m_nId:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_0
    invoke-virtual {p1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/Rotation;->Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    :cond_1
    :goto_1
    iget v0, p1, Lcom/voovio/sweep/Transition;->m_nMoveToPosition:I

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    add-int/lit8 v2, v6, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    aget v2, v2, v6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, v1, Lcom/voovio/sweep/Transition;->m_fD:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeTransitionMatrices()V

    monitor-exit v8

    return-void

    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget v1, v7, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/voovio/sweep/Transition;->Setup()V

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 3
    .param p1    # Lcom/voovio/sweep/Voovio;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/voovio/sweep/SweepView$5;

    invoke-direct {v1, p0, p1}, Lcom/voovio/sweep/SweepView$5;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nMoveToPosition:I

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq p1, v2, :cond_2

    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    if-nez v2, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->startAutodriveIfNeeded()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v2}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private finishTransitionIfNeeded()V
    .locals 3

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/high16 v2, 0x3f800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, v1, Lcom/voovio/sweep/Transition;->m_fD:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    sub-float/2addr v1, v2

    sget v2, Lcom/voovio/sweep/SweepView;->TRANSITION_FINISH_FRAMES:I

    int-to-float v2, v2

    div-float v0, v1, v2

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    :cond_0
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_TRANSITION:I

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    :cond_1
    return-void
.end method

.method private processDisplacements(FFFZ)V
    .locals 29
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_14

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v2, v2, Lcom/voovio/sweep/Rotation;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    check-cast v2, Lcom/voovio/sweep/Rotation;

    iget v0, v2, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    move/from16 v24, v0

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_8

    const/high16 v2, -0x40800000

    cmpl-float v2, v24, v2

    if-nez v2, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_4

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    const/4 v15, 0x1

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    aget-object v25, v2, v3

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    move/from16 v0, v24

    neg-float v3, v0

    move/from16 v0, v21

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    :goto_4
    return-void

    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_9

    const/high16 v2, -0x40800000

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x3f800000

    cmpl-float v2, v24, v2

    if-nez v2, :cond_2

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-eq v2, v3, :cond_d

    :cond_c
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-eq v2, v3, :cond_10

    :cond_f
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_2

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v5, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float v6, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float v7, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v3, v6

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v3, v7

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    const v3, 0x42652ee0

    mul-float v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    const v3, 0x42652ee0

    mul-float v19, v2, v3

    const v2, 0x3e19999a

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v20, v2, v3

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_16

    :cond_15
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_18

    :cond_16
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_17

    div-float v22, v18, v16

    cmpg-float v2, v20, v16

    if-gez v2, :cond_1a

    move/from16 v0, v22

    neg-float v2, v0

    mul-float p2, v2, v20

    :cond_17
    :goto_5
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_18

    div-float v23, v19, v17

    cmpg-float v2, v20, v17

    if-gez v2, :cond_1b

    move/from16 v0, v23

    neg-float v2, v0

    mul-float p3, v2, v20

    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/voovio/sweep/SweepView;->testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;

    move-result-object v27

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_1c

    if-eqz v27, :cond_1d

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_19

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeTransitionMatrices()V

    goto/16 :goto_4

    :cond_1a
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 p2, v0

    goto :goto_5

    :cond_1b
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_6

    :cond_1c
    if-eqz v27, :cond_1d

    const/4 v7, 0x0

    move v6, v7

    move v5, v7

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    move-result v14

    if-eqz v27, :cond_1e

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-nez v2, :cond_1f

    if-eqz p4, :cond_7

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    invoke-virtual {v2}, Lcom/voovio/sweep/FrustumLimiter;->getTriggerIntersection()Ljava/lang/String;

    move-result-object v28

    const/4 v9, 0x0

    const-string v2, "left"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_20

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_22

    :cond_20
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    :cond_21
    :goto_7
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/voovio/sweep/Rotation;->Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget v2, v2, Lcom/voovio/sweep/FrustumLimiter;->m_fDeltaD:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeTransitionMatrices()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    goto/16 :goto_3

    :cond_22
    const-string v2, "right"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_23

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_21

    :cond_23
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_7
.end method

.method private requestMoveToTransition(Lcom/voovio/sweep/Transition;)V
    .locals 5
    .param p1    # Lcom/voovio/sweep/Transition;

    const/4 v4, 0x0

    iget-object v2, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    iget-object v2, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-lt v2, v3, :cond_0

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ge v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2, p1}, Lcom/voovio/sweep/ResourceManager;->isWaitingForReady(Lcom/voovio/sweep/Transition;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v3, v2, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2, p1}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Transition;)V

    monitor-exit v3

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Transition;)V

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToTransition(Lcom/voovio/sweep/Transition;)V

    goto :goto_0
.end method

.method private requestMoveToVoovio(Lcom/voovio/sweep/Voovio;Z)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Voovio;
    .param p2    # Z

    iput-boolean p2, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->isWaitingForReady(Lcom/voovio/sweep/Voovio;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, v0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Voovio;)V

    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->waitForReady(Lcom/voovio/sweep/Voovio;)V

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V

    goto :goto_0
.end method

.method private setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 12
    .param p1    # Lcom/voovio/sweep/Voovio;

    const/high16 v11, 0x3f800000

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeVoovioMatrices()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    iput-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v6, v8

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    :cond_0
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v6, v10

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v1

    :cond_1
    if-eqz v2, :cond_9

    cmpl-float v6, v0, v9

    if-lez v6, :cond_9

    if-eqz v3, :cond_9

    cmpg-float v6, v1, v9

    if-gez v6, :cond_9

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_8

    :cond_2
    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    :cond_3
    :goto_0
    if-eqz v2, :cond_c

    cmpg-float v6, v0, v9

    if-gez v6, :cond_c

    if-eqz v3, :cond_c

    cmpl-float v6, v1, v9

    if-lez v6, :cond_c

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_b

    :cond_4
    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    :cond_5
    :goto_1
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v6, v6, Lcom/voovio/sweep/Rotation;

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->reset()V

    invoke-virtual {v4, v11, v9, v9}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v4}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    iget-boolean v6, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->hasAutodrive()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAutodriveVelocity()V

    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void

    :cond_8
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_3

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_a

    cmpl-float v6, v0, v9

    if-lez v6, :cond_a

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_3

    cmpg-float v6, v1, v9

    if-gez v6, :cond_3

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_5

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    :cond_c
    if-eqz v2, :cond_d

    cmpg-float v6, v0, v9

    if-gez v6, :cond_d

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    :cond_d
    if-eqz v3, :cond_5

    cmpl-float v6, v1, v9

    if-lez v6, :cond_5

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    :cond_e
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v6, v7, :cond_10

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    :cond_f
    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v6, v11

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2

    :cond_10
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v10

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    :goto_4
    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    :cond_11
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_4

    :cond_12
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    :cond_13
    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v6, v11

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2

    :cond_14
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v7, Lcom/voovio/sweep/SweepView$7;

    invoke-direct {v7, p0}, Lcom/voovio/sweep/SweepView$7;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private setGLViewportAndProjection(Lcom/voovio/voo3d/view/Viewport;)V
    .locals 4
    .param p1    # Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES11;->glViewport(IIII)V

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getRatio()F

    move-result v1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    invoke-static {v0, v1, v2, v3}, Lcom/voovio/gles/GLESUtil;->gluPerspective(FFFF)V

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/voovio/sweep/SweepView;->createSnapshot(IIII)V

    return-void
.end method

.method private setGLViewportAndProjection(Z)V
    .locals 23
    .param p1    # Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    int-to-float v0, v3

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v9, v18, v19

    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v10, v18, v19

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v18, v19

    int-to-float v0, v3

    move/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v5, v18, v19

    const/high16 v18, 0x3f000000

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    const-wide/high16 v19, 0x3fe0000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    div-float v6, v18, v19

    cmpg-float v18, v4, v5

    if-gez v18, :cond_2

    const/high16 v18, 0x40000000

    mul-float v18, v18, v6

    const-wide/high16 v19, 0x3fe0000000000000L

    float-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v12, v0

    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, v4

    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v18, v18, v19

    div-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v14, v0

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v11, v2

    :goto_0
    sub-int v18, v3, v14

    div-int/lit8 v16, v18, 0x2

    sub-int v18, v2, v11

    div-int/lit8 v17, v18, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    invoke-virtual {v13, v14}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    invoke-virtual {v13, v11}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportAndProjectionRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/high16 v18, 0x40000000

    mul-float v18, v18, v6

    const-wide/high16 v19, 0x3fe0000000000000L

    float-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    mul-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v15, v0

    mul-int v18, v3, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v19, v15, v4

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v11, v0

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v14, v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Lcom/voovio/voo3d/view/Viewport;)V

    goto :goto_1
.end method

.method private startAutodriveIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    new-instance v0, Lcom/voovio/sweep/SweepView$6;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$6;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startFrom(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/voovio/sweep/SweepView;->requestMoveToVoovio(Lcom/voovio/sweep/Voovio;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1
.end method

.method private testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;
    .locals 4
    .param p1    # Lcom/voovio/voo3d/data/Vector3;
    .param p2    # Lcom/voovio/voo3d/data/Vector3;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v3, v0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1, v0, p1, p2, v3}, Lcom/voovio/sweep/Transition;->TestTransition(ILcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/scenegraph/Camera3D;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateCameraViewport()V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    invoke-virtual {v3, v8}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    invoke-virtual {v3, v2}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    invoke-virtual {v3, v1}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v7, v7, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    move v0, v5

    :goto_0
    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v7, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v7, v8}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v7, v6}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_0
    invoke-direct {p0, v5}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    return-void

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private updateScene()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-ne v1, v2, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    const/high16 v2, 0x447a0000

    div-float v12, v1, v2

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    mul-float v15, v1, v12

    :cond_0
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9, v10, v1}, Lcom/voovio/sweep/SweepView;->processDisplacements(FFFZ)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    mul-float/2addr v1, v2

    mul-float v10, v1, v12

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    mul-float v13, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v1, v1, Lcom/voovio/sweep/Rotation;

    if-nez v1, :cond_6

    move v15, v13

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v14, v1, v2

    const/16 v16, 0x0

    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-lez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aget-object v16, v1, v2

    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v11

    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_7

    move v15, v13

    :cond_7
    invoke-static/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v18

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    move-object/from16 v0, v18

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, v18

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    move-object/from16 v0, v18

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v18

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x1

    aget-object v16, v1, v2

    invoke-virtual/range {v16 .. v16}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v17

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v2, 0x3f800000

    sub-float/2addr v1, v2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, v17

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    mul-float v9, v1, v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    mul-float v10, v1, v12

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_FADE:I

    if-ne v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_nFadeSteps:I

    if-ne v1, v2, :cond_2

    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nFadeCurStep:I

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_TRANSITION:I

    if-ne v1, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v1, v1, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v1, v2, :cond_12

    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v3, v4}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_fD:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    :cond_13
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionFactor:F

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_fTransitionAccumD:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto :goto_4

    :cond_16
    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    if-ne v1, v2, :cond_18

    sget v1, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addFov(F)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    neg-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    neg-float v8, v8

    invoke-virtual/range {v1 .. v8}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    goto/16 :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->dispose()V

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    :cond_2
    return-void
.end method

.method public getAutodrive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    return v0
.end method

.method public getAutodriveFov()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    return v0
.end method

.method public getAvailableDirections()[Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v8, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v1

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v3, v1

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    if-nez v1, :cond_3

    cmpg-float v3, v0, v6

    if-ltz v3, :cond_4

    :cond_3
    if-ne v1, v5, :cond_5

    cmpl-float v3, v0, v6

    if-lez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v5, v3, v7

    :cond_5
    if-nez v1, :cond_6

    cmpl-float v3, v0, v6

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v5, v3, v5

    :cond_6
    if-nez v1, :cond_7

    cmpl-float v3, v0, v6

    if-gtz v3, :cond_8

    :cond_7
    if-ne v1, v5, :cond_9

    cmpg-float v3, v0, v6

    if-gez v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    aput-boolean v5, v3, v8

    :cond_9
    if-ne v1, v5, :cond_a

    cmpl-float v3, v0, v6

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:[Z

    const/4 v4, 0x3

    aput-boolean v5, v3, v4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getImagePositions()[I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    return-object v0
.end method

.method public getMaxPosition()I
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getSweep()Lcom/voovio/sweep/Sweep;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    return-object v0
.end method

.method public getTotalNumberOfFrames()I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getTotalNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public getZoomInFov()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    return v0
.end method

.method public hasAutodrive()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveToPosition(IZ)V
    .locals 6
    .param p1    # I
    .param p2    # Z

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/voovio/sweep/SweepView;->setAutodrive(ZZ)V

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v4, v4, v0

    if-gt p1, v4, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    aget v4, v4, v0

    if-eq p1, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    aget v4, v4, v0

    if-ge p1, v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iput p1, v3, Lcom/voovio/sweep/Voovio;->m_nMoveToPosition:I

    invoke-direct {p0, v3, p2}, Lcom/voovio/sweep/SweepView;->requestMoveToVoovio(Lcom/voovio/sweep/Voovio;Z)V

    :goto_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Transition;

    iput p1, v2, Lcom/voovio/sweep/Transition;->m_nMoveToPosition:I

    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->requestMoveToTransition(Lcom/voovio/sweep/Transition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    sub-long v3, v0, v3

    long-to-float v2, v3

    :goto_0
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const/high16 v4, 0x421c0000

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v4, 0x42200000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    sub-float/2addr v4, v5

    const v5, 0x3dcccccd

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRMLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v3}, Lcom/voovio/sweep/ResourceManager;->loop()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateScene()V

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->drawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public onPause()V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->onPause()V

    invoke-virtual {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    const/high16 v3, 0x418c0000

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    sget v3, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iput-boolean v8, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/high16 v4, -0x40800000

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v4, v4, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    :cond_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->destroySnapshotWithoutOpenGLContext()V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/voovio/sweep/TexturePool;->clearWithoutOpenGLContext()V

    iput-boolean v8, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->DestroyWithoutOpenGLContext()V

    iget-object v3, v2, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v3, :cond_5

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    :goto_1
    iput v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget v3, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLConfig;

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES11;->glFrontFace(I)V

    const/16 v0, 0x1d01

    invoke-static {v0}, Landroid/opengl/GLES11;->glShadeModel(I)V

    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES11;->glClearColor(FFFF)V

    invoke-static {v2}, Landroid/opengl/GLES11;->glClearDepthf(F)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnable(I)V

    const/16 v0, 0x201

    invoke-static {v0}, Landroid/opengl/GLES11;->glDepthFunc(I)V

    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-static {v0, v1}, Landroid/opengl/GLES11;->glHint(II)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glTexEnvx(III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$11;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepView$11;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$12;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepView$12;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTransitionReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Transition;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/ResourceManager;
    .param p2    # Lcom/voovio/sweep/Transition;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$10;

    invoke-direct {v1, p0, p2}, Lcom/voovio/sweep/SweepView$10;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVoovioReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Voovio;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/ResourceManager;
    .param p2    # Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voovio/sweep/SweepView$9;

    invoke-direct {v1, p0, p2}, Lcom/voovio/sweep/SweepView$9;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public restore()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bRestore:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/voovio/sweep/SweepView;->moveToPosition(IZ)V

    goto :goto_0
.end method

.method public setAutodrive(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/SweepView;->setAutodrive(ZZ)V

    return-void
.end method

.method public setAutodrive(ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->hasAutodrive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAutodriveVelocity()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v0, p1}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onAutodriveStateChanged(Z)V

    :cond_1
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    return-void

    :cond_2
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveDirection:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->finishTransitionIfNeeded()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public setAutodriveFov(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveFOV:F

    return-void
.end method

.method public setAutodriveOnStart(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    return-void
.end method

.method public setAutodriveVelocity(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    iput p2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    return-void
.end method

.method public setCameraDisplacements(FF)V
    .locals 8
    .param p1    # F
    .param p2    # F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v3, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v3

    const/high16 v2, 0x40000000

    :try_start_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v0, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    const/4 v2, 0x0

    mul-float v4, p1, v1

    mul-float v5, p2, v1

    const/4 v6, 0x0

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/voovio/sweep/SweepView;->processDisplacements(FFFZ)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCameraZoomIncrement(FFF)V
    .locals 5
    .param p1    # F
    .param p2    # F
    .param p3    # F

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v1, p1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gtz v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    cmpg-float v1, p1, v3

    if-ltz v1, :cond_0

    :cond_3
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const v2, 0x3dcccccd

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->setGLViewportAndProjection(Z)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v1, v2, v3}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v1, v4}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_5
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    goto :goto_1
.end method

.method public setOnSweepViewListener(Lcom/voovio/sweep/SweepView$OnSweepViewListener;)V
    .locals 0
    .param p1    # Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 1
    .param p1    # Lcom/voovio/sweep/Sweep;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;I)V

    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;I)V
    .locals 6
    .param p1    # Lcom/voovio/sweep/Sweep;
    .param p2    # I

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-ne v3, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oActivityIndicator:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    sget v3, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bWillFadeToNextVoovio:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioPositions:[I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aTransitionPositions:[I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aVoovioTotals:[F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-lt v0, v1, :cond_4

    :cond_1
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/FrustumLimiter;->Init(Lcom/voovio/sweep/Sweep;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/voovio/sweep/SweepView;->startFrom(I)V

    :cond_2
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeVoovioPositions()V

    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v5, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v3, v5, :cond_5

    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->Destroy()V

    iget-object v3, v2, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v3, :cond_6

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    :goto_2
    iput v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    sget v3, Lcom/voovio/sweep/Voovio;->STATE_VOID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setVelocity(FFF)V
    .locals 4
    .param p1    # F
    .param p2    # F
    .param p3    # F

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v2, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    iput p3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    iput p2, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityUpward:F

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    mul-float/2addr v1, v0

    const/high16 v2, 0x447a0000

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_fTransitionCurVel:F

    :cond_2
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityRightward:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fVelocityForward:F

    goto :goto_0
.end method

.method public setZoomInFov(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    return-void
.end method

.method public startRequestingFrames(IIII)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance v0, Lcom/voovio/sweep/SweepOffScreen;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;-><init>(IIIILcom/voovio/sweep/ResourceManager;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/SweepOffScreen;->setAutodriveVelocity(FF)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v1}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;)V

    goto :goto_0
.end method

.method public stopInteraction()V
    .locals 0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->finishTransitionIfNeeded()V

    return-void
.end method

.method public stopRequestingFrames()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/ResourceManager;->setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public toogleZoomLevel(FF)V
    .locals 12
    .param p1    # F
    .param p2    # F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    sget v7, Lcom/voovio/sweep/SweepView;->OPERATION_NAVIGATION:I

    if-eq v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v0, v6

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v3

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v6, v6, v7

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v8, v10

    const-wide v10, 0x4076800000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    div-float v2, v6, v0

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    div-float v4, v6, v7

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v6, v4

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v7, v4

    const/high16 v8, 0x40000000

    div-float v8, v0, v8

    sub-float/2addr v8, p2

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v8, v4

    const/high16 v9, 0x40000000

    div-float v9, v1, v9

    sub-float v9, p1, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    :goto_1
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v9, 0x1

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v3, v7}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    iget-object v6, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    const/16 v6, 0x8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v7}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v7, 0x42652ee0

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v7, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v7}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v7, 0x42652ee0

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    sget v6, Lcom/voovio/sweep/SweepView;->OPERATION_ZOOM:I

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v7, v6}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method
