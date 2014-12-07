.class public Lcom/voovio/sweep/Rotation;
.super Lcom/voovio/sweep/Transition;
.source "Rotation.java"


# instance fields
.field m_fTurnDirection:F

.field m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oTransition:Lcom/voovio/sweep/Transition;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/Rotation;-><init>(Lcom/voovio/sweep/Sweep;)V

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    iput-object v1, p0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    iput-object v1, p0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    sget v0, Lcom/voovio/sweep/Rotation;->DIR_0_1:I

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    new-array v0, v2, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    new-array v0, v2, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v0, -0x40800000

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p2, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, p2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, p3}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    aget-object v0, v0, v3

    invoke-virtual {p3, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p3, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    mul-float/2addr v0, p1

    invoke-virtual {p3, v0}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    goto :goto_0
.end method

.method public Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_5

    sget v20, Lcom/voovio/sweep/Rotation;->DIR_0_1:I

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nDir:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_6

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_7

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_9

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_8

    const/high16 v20, 0x3f800000

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    aget-object v20, v20, v23

    :goto_5
    aput-object v20, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x1

    aget-object v20, v20, v23

    :goto_6
    aput-object v20, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    aget-object v20, v20, v23

    :goto_7
    aput-object v20, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x1

    aget-object v20, v20, v23

    :goto_8
    aput-object v20, v21, v22

    move-object/from16 v0, p2

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    div-float v19, v20, v21

    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_nDir:I

    move/from16 v20, v0

    sget v21, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const/high16 v20, -0x40800000

    mul-float v6, v6, v20

    :cond_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v20

    div-float v8, v6, v20

    neg-float v0, v8

    move/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFovH()F

    move-result v21

    mul-float v20, v20, v21

    const v21, 0x3c8efa35

    mul-float v20, v20, v21

    const/high16 v21, 0x40000000

    div-float v7, v20, v21

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v10

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    cmpg-float v22, v8, v22

    if-gez v22, :cond_1

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    :cond_1
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    if-eqz p5, :cond_f

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    :goto_9
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    if-nez p5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    neg-float v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/voovio/sweep/Transition;->GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    if-eqz p5, :cond_3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-virtual/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v20, v0

    const/high16 v21, -0x40800000

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    sget-object v20, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    sget-object v20, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v5

    mul-float v20, v5, v4

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v20

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v21

    cmpg-float v20, v20, v21

    if-gez v20, :cond_10

    move-object/from16 v16, v18

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    move-object/from16 v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v20, v0

    if-nez v20, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v20, v0

    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v21, v0

    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v22, v0

    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v20, v0

    iget v0, v14, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v21, v0

    iget v0, v14, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v22, v0

    iget v0, v14, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v20 .. v24}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    sget-object v21, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual/range {v20 .. v21}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    new-instance v15, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v15, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual {v15}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual/range {v20 .. v22}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x42652ee0

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fD:F

    invoke-static {v10}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    sget v20, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    goto/16 :goto_1

    :cond_6
    const/16 v20, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_8
    const/high16 v20, -0x40800000

    goto/16 :goto_4

    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_a

    const/high16 v20, -0x40800000

    goto/16 :goto_4

    :cond_a
    const/high16 v20, 0x3f800000

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x1

    aget-object v20, v20, v23

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    aget-object v20, v20, v23

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x1

    aget-object v20, v20, v23

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    aget-object v20, v20, v23

    goto/16 :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_9

    :cond_10
    move-object/from16 v16, v17

    goto/16 :goto_a

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    goto/16 :goto_b
.end method

.method public compute_v2(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    sget v18, Lcom/voovio/sweep/Rotation;->DIR_0_1:I

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nDir:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_4

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    const/high16 v18, 0x3f800000

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    :goto_5
    aput-object v18, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    :goto_6
    aput-object v18, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    :goto_7
    aput-object v18, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    :goto_8
    aput-object v18, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/voovio/sweep/Transition;->GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p2

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v17, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_nDir:I

    move/from16 v18, v0

    sget v19, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/high16 v18, -0x40800000

    mul-float v5, v5, v18

    :cond_0
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    div-float v7, v5, v18

    neg-float v0, v7

    move/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFovH()F

    move-result v19

    mul-float v18, v18, v19

    const v19, 0x3c8efa35

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000

    div-float v6, v18, v19

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v9

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v15

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v16

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    cmpg-float v20, v7, v20

    if-gez v20, :cond_1

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    :cond_1
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v15, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-virtual {v15}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    invoke-virtual {v15, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v19, v0

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v20, v0

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v12}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    neg-float v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    sget-object v18, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    sget-object v18, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    mul-float v18, v4, v3

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_d

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpg-float v18, v18, v19

    if-gez v18, :cond_d

    move-object/from16 v14, v16

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v11

    move-object v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v22}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    sget-object v21, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual/range {v19 .. v21}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    sget-object v20, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngle_v1_vt:F

    invoke-static {v9}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v15}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v12}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    sget v18, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    goto/16 :goto_1

    :cond_4
    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_6
    const/high16 v18, -0x40800000

    goto/16 :goto_4

    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_8

    const/high16 v18, -0x40800000

    goto/16 :goto_4

    :cond_8
    const/high16 v18, 0x3f800000

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    goto/16 :goto_8

    :cond_d
    move-object v14, v15

    goto/16 :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    goto/16 :goto_a
.end method

.method public isRotation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
