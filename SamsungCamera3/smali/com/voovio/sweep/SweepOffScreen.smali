.class public final Lcom/voovio/sweep/SweepOffScreen;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Lcom/voovio/sweep/GLOffScreen$Renderer;


# static fields
.field public static final CONFIG_ARGB_8888:I = 0x1

.field public static final CONFIG_RGB_565:I = 0x0

.field static final TAG:Ljava/lang/String; = "SweepOffScreen"


# instance fields
.field private m_bResourceManagerInherited:Z

.field private m_fAutodriveDirection:F

.field private m_fAutodriveVelocityForward:F

.field private m_fAutodriveVelocitySideward:F

.field private m_fTransitionAccumD:F

.field private m_fTransitionFactor:F

.field private m_fTransitionMatrices:[[F

.field private m_fVoovioMatrices:[[F

.field private m_nConfig:I

.field private m_nFramePeriod_ms:I

.field private m_nHeight:I

.field private m_nLastFrame:I

.field private m_nWidth:I

.field m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oCurVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

.field private m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oRMLIntervalRunnable:Ljava/lang/Runnable;

.field private m_oRMLTaskRunnable:Ljava/lang/Runnable;

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field private m_oRotation:Lcom/voovio/sweep/Rotation;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oTransition:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

.field private m_pt0:Lcom/voovio/voo3d/data/Vector3;

.field private m_pt1:Lcom/voovio/voo3d/data/Vector3;

.field private m_ptPos:Lcom/voovio/voo3d/data/Vector3;

.field private m_vDir:Lcom/voovio/voo3d/data/Vector3;

.field m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;-><init>(IIIILcom/voovio/sweep/ResourceManager;)V

    return-void
.end method

.method public constructor <init>(IIIILcom/voovio/sweep/ResourceManager;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iput-boolean v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    const/high16 v0, 0x43480000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    const/16 v0, 0x32

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    invoke-virtual {p0, p1, p2}, Lcom/voovio/sweep/SweepOffScreen;->setSize(II)V

    const/high16 v0, 0x447a0000

    int-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    iput p4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    invoke-virtual {p0, p5}, Lcom/voovio/sweep/SweepOffScreen;->init(Lcom/voovio/sweep/ResourceManager;)V

    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/ResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/GLOffScreen;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    return-object v0
.end method

.method static synthetic access$2(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/voovio/sweep/SweepOffScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/voovio/sweep/SweepOffScreen;)I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    return v0
.end method

.method private cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V
    .locals 11

    const/4 v5, 0x0

    const v10, 0x3dcccccd

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setTilt(F)V

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateY(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_1

    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    iget-object v3, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    iget-object v0, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    iget v4, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v10

    sub-float/2addr v6, v7

    invoke-direct {v1, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    :goto_0
    iget-object v2, p1, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v7, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    const v5, 0x3d4ccccd

    invoke-virtual {v4, v5, v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->moveHorizontallyForward(FZ)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v9

    aget-object v4, v4, v9

    iget-object v1, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_0
.end method

.method private computeAutodriveVelocity()V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v10

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v8, v8, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v8, v8, v10

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    const v9, 0x3dcccccd

    invoke-static {v8, v9}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v3

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v6, v10

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    :goto_0
    cmpl-float v6, v0, v7

    if-eqz v6, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v6, v0, v6

    :goto_1
    iput v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    cmpl-float v6, v0, v7

    if-nez v6, :cond_0

    invoke-static {v3, v4}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v1

    cmpl-float v6, v1, v7

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_2
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
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    :goto_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

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

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v2, v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    :cond_1
    return-void
.end method

.method private hasAutodrive()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private processDisplacements(FFF)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_13

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v2, v2, Lcom/voovio/sweep/Rotation;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

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

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_4

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

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

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

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

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_7
    :goto_3
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

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-eq v2, v3, :cond_d

    :cond_c
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-eq v2, v3, :cond_10

    :cond_f
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_2

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v5, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float v6, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float v7, v2, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v3, v6

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v3, v7

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v19

    const v2, 0x3e19999a

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x3c8efa35

    mul-float v20, v2, v3

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_15

    :cond_14
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_17

    :cond_15
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v16

    float-to-double v2, v0

    const-wide v10, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v10

    if-lez v2, :cond_16

    div-float v22, v18, v16

    cmpg-float v2, v20, v16

    if-gez v2, :cond_19

    move/from16 v0, v22

    neg-float v2, v0

    mul-float p2, v2, v20

    :goto_4
    const v2, 0x42652ee0

    mul-float p2, p2, v2

    :cond_16
    move/from16 v0, v17

    float-to-double v2, v0

    const-wide v10, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v10

    if-lez v2, :cond_17

    div-float v23, v19, v17

    cmpg-float v2, v20, v17

    if-gez v2, :cond_1a

    move/from16 v0, v23

    neg-float v2, v0

    mul-float p3, v2, v20

    :goto_5
    const v2, 0x42652ee0

    mul-float p3, p3, v2

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/voovio/sweep/SweepOffScreen;->testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;

    move-result-object v27

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_1b

    if-eqz v27, :cond_1c

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_18

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepOffScreen;->computeTransitionMatrices()V

    goto/16 :goto_3

    :cond_19
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 p2, v0

    goto :goto_4

    :cond_1a
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_5

    :cond_1b
    if-eqz v27, :cond_1c

    const/4 v7, 0x0

    move v6, v7

    move v5, v7

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    move-result v14

    if-eqz v27, :cond_1d

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    invoke-virtual {v2}, Lcom/voovio/sweep/FrustumLimiter;->getTriggerIntersection()Ljava/lang/String;

    move-result-object v28

    const/4 v9, 0x0

    const-string v2, "left"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_1e

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_20

    :cond_1e
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    :cond_1f
    :goto_6
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/voovio/sweep/Rotation;->Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget v2, v2, Lcom/voovio/sweep/FrustumLimiter;->m_fDeltaD:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepOffScreen;->computeTransitionMatrices()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    goto/16 :goto_3

    :cond_20
    const-string v2, "right"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_21

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_1f

    :cond_21
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_6
.end method

.method private setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->computeVoovioMatrices()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    iput-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v6, v8

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    :cond_0
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v6, v10

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v1

    :cond_1
    if-eqz v2, :cond_8

    cmpl-float v6, v0, v9

    if-lez v6, :cond_8

    if-eqz v3, :cond_8

    cmpg-float v6, v1, v9

    if-gez v6, :cond_8

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_7

    :cond_2
    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    :cond_3
    :goto_0
    if-eqz v2, :cond_b

    cmpg-float v6, v0, v9

    if-gez v6, :cond_b

    if-eqz v3, :cond_b

    cmpl-float v6, v1, v9

    if-lez v6, :cond_b

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_a

    :cond_4
    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    :cond_5
    :goto_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v6, v6, Lcom/voovio/sweep/Rotation;

    if-eqz v6, :cond_d

    new-instance v5, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v5}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    new-instance v4, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v6, 0x3f800000

    invoke-direct {v4, v6, v9, v9}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->hasAutodrive()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->computeAutodriveVelocity()V

    :goto_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void

    :cond_7
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_3

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    cmpl-float v6, v0, v9

    if-lez v6, :cond_9

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_3

    cmpg-float v6, v1, v9

    if-gez v6, :cond_3

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_5

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto :goto_1

    :cond_b
    if-eqz v2, :cond_c

    cmpg-float v6, v0, v9

    if-gez v6, :cond_c

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    :cond_c
    if-eqz v3, :cond_5

    cmpl-float v6, v1, v9

    if-lez v6, :cond_5

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    :cond_d
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v5, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v4, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    :goto_4
    goto/16 :goto_2

    :cond_e
    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v5, v6}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    goto :goto_4

    :cond_f
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v10

    aget-object v6, v6, v10

    iget-object v5, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    :goto_5
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_2

    :cond_10
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v5, v6, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_5

    :cond_11
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v5, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v4, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    :goto_6
    goto/16 :goto_2

    :cond_12
    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v5, v6}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    goto :goto_6

    :cond_13
    iput v9, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    iget v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    goto/16 :goto_3
.end method

.method private setGLViewportAndProjection()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v1, Lcom/voovio/sweep/SweepOffScreen$5;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepOffScreen$5;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startFrom(I)V
    .locals 4

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraViewport()V

    if-nez p1, :cond_3

    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    move v0, p1

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v3, Lcom/voovio/sweep/SweepOffScreen$4;

    invoke-direct {v3, p0, v0}, Lcom/voovio/sweep/SweepOffScreen$4;-><init>(Lcom/voovio/sweep/SweepOffScreen;I)V

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v2}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v2}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    goto :goto_2
.end method

.method private testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

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
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v3, v0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1, v0, p1, p2, v3}, Lcom/voovio/sweep/Transition;->TestTransition(ILcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/scenegraph/Camera3D;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateCameraViewport()V
    .locals 11

    const/4 v6, 0x0

    const-wide/high16 v9, 0x4000000000000000L

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v5, v5, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    iget v5, v4, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    int-to-float v5, v5

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v6, v6

    div-float v1, v5, v6

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    int-to-float v6, v6

    div-float v0, v5, v6

    cmpl-float v5, v0, v1

    if-lez v5, :cond_0

    iget v5, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const v6, 0x3c8efa35

    mul-float/2addr v5, v6

    float-to-double v5, v5

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    float-to-double v7, v1

    mul-double/2addr v5, v7

    float-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    const-wide v7, 0x404ca5dc00000000L

    mul-double/2addr v5, v7

    double-to-float v5, v5

    const v6, 0x3dcccccd

    sub-float v2, v5, v6

    :goto_0
    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5, v6}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->setGLViewportAndProjection()V

    return-void

    :cond_0
    iget v2, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    goto :goto_0
.end method

.method private updateScene()V
    .locals 7

    const/4 v6, 0x0

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000

    div-float v2, v4, v5

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    mul-float v3, v4, v2

    :goto_0
    cmpl-float v4, v3, v6

    if-nez v4, :cond_0

    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    cmpl-float v4, v1, v6

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v3, v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->processDisplacements(FFF)V

    :cond_1
    return-void

    :cond_2
    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    mul-float/2addr v4, v5

    mul-float v1, v4, v2

    goto :goto_0
.end method

.method private waitForTransitionReady()I
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v3, :cond_2

    const/16 v2, 0x32

    const/16 v1, 0x3e8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget-boolean v3, v3, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget-boolean v3, v3, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v3, :cond_1

    :cond_0
    if-lt v0, v1, :cond_2

    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_1
    int-to-long v5, v2

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->dispose()V

    :cond_1
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/GLOffScreen;->dispose()V

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    :cond_2
    return-void
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SweepOffScreen"

    const-string v2, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v1}, Lcom/voovio/sweep/GLOffScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SweepOffScreen"

    const-string v2, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v1}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SweepOffScreen"

    const-string v3, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v2, p1}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer(Ljava/nio/ByteBuffer;)I

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-le v2, v0, :cond_2

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getSweep()Lcom/voovio/sweep/Sweep;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    return-object v0
.end method

.method public getTotalNumberOfFrames()I
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    iput v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iput v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Lcom/voovio/sweep/ResourceManager;)V
    .locals 8

    const/16 v1, 0x64

    const/16 v7, 0x10

    const/4 v6, 0x2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    new-instance v0, Lcom/voovio/sweep/GLOffScreen;

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    invoke-direct {v0, v2, v3, v4}, Lcom/voovio/sweep/GLOffScreen;-><init>(III)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/GLOffScreen;->setRenderer(Lcom/voovio/sweep/GLOffScreen$Renderer;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    if-eqz p1, :cond_1

    :goto_1
    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/voovio/sweep/ResourceManager;->setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V

    new-instance v0, Lcom/voovio/sweep/SweepOffScreen$1;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepOffScreen$1;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepOffScreen$2;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepOffScreen$2;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/high16 v3, 0x42480000

    const/high16 v4, 0x3f000000

    const v5, 0x461c4000

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/sweep/FrustumLimiter;

    invoke-direct {v0}, Lcom/voovio/sweep/FrustumLimiter;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    new-instance v0, Lcom/voovio/sweep/Rotation;

    invoke-direct {v0}, Lcom/voovio/sweep/Rotation;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/voovio/sweep/ResourceManager;

    invoke-direct {p1}, Lcom/voovio/sweep/ResourceManager;-><init>()V

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    const/16 v13, 0x100

    const/16 v12, 0xbe2

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000

    const/4 v8, 0x0

    const/16 v7, 0x4100

    invoke-static {v7}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v7, 0x1700

    invoke-static {v7}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    invoke-static {v7, v8}, Landroid/opengl/GLES11;->glLoadMatrixf([FI)V

    const/4 v0, 0x1

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v7, v7, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v7, v7, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/Voovio;

    iget-boolean v7, v5, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v6, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v7, :cond_7

    move v0, v8

    :goto_0
    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v7}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v12}, Landroid/opengl/GLES11;->glEnable(I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v7, v7, v8

    invoke-virtual {v5, p1, v11, v7}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v13}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v7, 0x302

    const/16 v10, 0x303

    invoke-static {v7, v10}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v7, v7, v9

    invoke-virtual {v6, p1, v11, v7}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v13}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v7, 0x302

    const/16 v10, 0x303

    invoke-static {v7, v10}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    sub-float v7, v11, v7

    iget-object v10, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v10, v10, v8

    invoke-virtual {v5, p1, v7, v10}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v12}, Landroid/opengl/GLES11;->glDisable(I)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-boolean v7, v7, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v7, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v7, v8

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v7, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v7, v9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    move-object v2, v7

    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    move-object v4, v7

    :goto_3
    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v7, v2, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v7, :cond_3

    :cond_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    iget-boolean v7, v4, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v7, :cond_3

    :cond_2
    if-eqz v4, :cond_b

    iget-boolean v7, v4, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v7, :cond_b

    if-eqz v2, :cond_b

    iget-boolean v7, v2, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v7, :cond_b

    :cond_3
    invoke-static {v12}, Landroid/opengl/GLES11;->glEnable(I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v10, 0x0

    invoke-virtual {v7, p1, v11, v10}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v13}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v7, 0x302

    const/16 v10, 0x303

    invoke-static {v7, v10}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    aget-object v7, v7, v9

    invoke-virtual {v4, p1, v11, v7}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    aget-object v7, v7, v8

    invoke-virtual {v2, p1, v11, v7}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    :cond_5
    invoke-static {v13}, Landroid/opengl/GLES11;->glClear(I)V

    const/16 v7, 0x302

    const/16 v8, 0x303

    invoke-static {v7, v8}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v11, v8}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v12}, Landroid/opengl/GLES11;->glDisable(I)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v9

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v7, v7, v8

    invoke-virtual {v5, p1, v11, v7}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v13}, Landroid/opengl/GLES11;->glClear(I)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v7, v7, v9

    invoke-virtual {v6, p1, v11, v7}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v13}, Landroid/opengl/GLES11;->glClear(I)V

    invoke-static {v12}, Landroid/opengl/GLES11;->glEnable(I)V

    const/16 v7, 0x302

    const/16 v10, 0x303

    invoke-static {v7, v10}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    iget v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    sub-float v7, v11, v7

    iget-object v10, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v10, v10, v8

    invoke-virtual {v5, p1, v7, v10}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    invoke-static {v12}, Landroid/opengl/GLES11;->glDisable(I)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_b
    invoke-static {v12}, Landroid/opengl/GLES11;->glDisable(I)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v7, p1, v11}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_4
.end method

.method public onInit(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

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

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepOffScreen;->startFrom(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->setGLViewportAndProjection()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/high16 v2, -0x40800000

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v3, v4}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    iget v1, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->DestroyWithoutOpenGLContext()V

    iget-object v1, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v1, :cond_5

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    :goto_1
    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    goto :goto_0

    :cond_5
    sget v1, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setAutodriveVelocity(FF)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    iput p2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    return-void
.end method

.method protected setSize(II)V
    .locals 5

    iput p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iput p2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraViewport()V

    :cond_1
    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;I)V

    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v1, Lcom/voovio/sweep/SweepOffScreen$3;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepOffScreen$3;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    :cond_1
    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->Init(Lcom/voovio/sweep/Sweep;)V

    invoke-direct {p0, p2}, Lcom/voovio/sweep/SweepOffScreen;->startFrom(I)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    goto :goto_0
.end method
