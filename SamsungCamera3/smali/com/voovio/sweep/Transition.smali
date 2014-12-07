.class public Lcom/voovio/sweep/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# static fields
.field static DIR_0_1:I

.field static DIR_1_0:I


# instance fields
.field m_aP:[Lcom/voovio/voo3d/data/Vector3;

.field m_aPortals:[[Lcom/voovio/sweep/Portal;

.field m_aTR0:[Lcom/voovio/sweep/Transform;

.field m_aTR1:[Lcom/voovio/sweep/Transform;

.field m_aVoovios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field m_fAngleBetweenPortalNormals:F

.field m_fAngleStepX:F

.field m_fAngleStepY:F

.field m_fAngle_v1_v2:F

.field m_fAngle_v1_vt:F

.field m_fD:F

.field m_fRotationAngle:F

.field m_fWalkingSteps:F

.field m_nDir:I

.field m_nMoveToPosition:I

.field m_nPortalIn:I

.field m_nPortalOut:I

.field m_nWay:I

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field m_ptIn:Lcom/voovio/voo3d/data/Vector3;

.field m_ptOut:Lcom/voovio/voo3d/data/Vector3;

.field m_v1:Lcom/voovio/voo3d/data/Vector3;

.field m_v2:Lcom/voovio/voo3d/data/Vector3;

.field m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

.field m_vSide:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    const/4 v0, 0x1

    sput v0, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    new-array v0, v6, [[Lcom/voovio/sweep/Portal;

    new-array v1, v6, [Lcom/voovio/sweep/Portal;

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Lcom/voovio/sweep/Portal;

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    new-array v0, v4, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    new-array v0, v4, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    sget v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    iput v4, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    iput v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    new-array v0, v6, [Lcom/voovio/voo3d/data/Vector3;

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v1}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v1}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    iput-object v7, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fD:F

    iput-object v7, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    iput-object v7, p0, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_vt:F

    iput-object v7, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    return-void
.end method

.method private GetIntermediatePoint(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;
    .locals 20

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voovio/sweep/Voovio;

    const/high16 v15, 0x3f000000

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-double v15, v15

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    double-to-float v15, v15

    const v16, 0x3c8efa35

    sub-float v8, v15, v16

    const/high16 v15, 0x3f000000

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-double v15, v15

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    double-to-float v9, v15

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    float-to-double v15, v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    double-to-float v6, v15

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    float-to-double v15, v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    double-to-float v7, v15

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/16 v2, 0x8

    const/4 v13, 0x0

    neg-float v15, v8

    cmpg-float v15, v6, v15

    if-gez v15, :cond_2

    or-int/2addr v13, v3

    :cond_0
    :goto_0
    neg-float v15, v9

    cmpg-float v15, v7, v15

    if-gez v15, :cond_3

    or-int/2addr v13, v2

    :cond_1
    :goto_1
    if-ne v13, v3, :cond_4

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    mul-float v17, v17, p2

    neg-float v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->tan(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    :goto_2
    return-object v12

    :cond_2
    cmpl-float v15, v6, v8

    if-lez v15, :cond_0

    or-int/2addr v13, v4

    goto :goto_0

    :cond_3
    cmpl-float v15, v7, v9

    if-lez v15, :cond_1

    or-int/2addr v13, v5

    goto :goto_1

    :cond_4
    if-ne v13, v4, :cond_5

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v17, v0

    mul-float v17, v17, p2

    float-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->tan(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    goto :goto_2

    :cond_5
    if-ne v13, v2, :cond_6

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    neg-float v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->tan(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v17, v0

    mul-float v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    goto :goto_2

    :cond_6
    if-ne v13, v5, :cond_7

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    float-to-double v0, v9

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->tan(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v17, v0

    mul-float v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    goto/16 :goto_2

    :cond_7
    if-eqz v13, :cond_c

    const/4 v15, 0x3

    if-ne v13, v15, :cond_9

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    :cond_8
    :goto_3
    invoke-virtual {v12}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    invoke-static/range {p1 .. p2}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v10

    invoke-virtual {v12, v10}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    goto/16 :goto_2

    :cond_9
    const/16 v15, 0x9

    if-ne v13, v15, :cond_a

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    goto :goto_3

    :cond_a
    const/4 v15, 0x6

    if-ne v13, v15, :cond_b

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    goto :goto_3

    :cond_b
    const/16 v15, 0xc

    if-ne v13, v15, :cond_8

    new-instance v12, Lcom/voovio/voo3d/data/Vector3;

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    goto/16 :goto_3

    :cond_c
    const v15, 0x3f4ccccd

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    goto/16 :goto_2
.end method

.method private computeAngleBetweenPortalNormals()F
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Lcom/voovio/geometry/Point;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v5, v5, v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v2, v4, v5}, Lcom/voovio/geometry/Point;-><init>(FF)V

    new-instance v3, Lcom/voovio/geometry/Point;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v7

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v5, v5, v7

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v3, v4, v5}, Lcom/voovio/geometry/Point;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/voovio/geometry/Point;->dotPerp(Lcom/voovio/geometry/Point;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/high16 v1, -0x40800000

    :goto_0
    invoke-virtual {v2, v3}, Lcom/voovio/geometry/Point;->getAngle(Lcom/voovio/geometry/Point;)F

    move-result v4

    mul-float v0, v1, v4

    return v0

    :cond_0
    const/high16 v1, 0x3f800000

    goto :goto_0
.end method


# virtual methods
.method public AddVoovio(Lcom/voovio/sweep/Voovio;Z)I
    .locals 4

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/voovio/sweep/Transform;

    invoke-direct {v1}, Lcom/voovio/sweep/Transform;-><init>()V

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    invoke-static {v3, v1}, Lcom/voovio/util/ArrayUtil;->append([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/voovio/sweep/Transform;

    iput-object v3, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    new-instance v2, Lcom/voovio/sweep/Transform;

    invoke-direct {v2}, Lcom/voovio/sweep/Transform;-><init>()V

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    invoke-static {v3, v2}, Lcom/voovio/util/ArrayUtil;->append([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/voovio/sweep/Transform;

    iput-object v3, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    if-eqz p2, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget v3, Lcom/voovio/sweep/Voovio;->REG_TRANSITION_SRC:I

    invoke-virtual {p1, p0, v3}, Lcom/voovio/sweep/Voovio;->RegisterTransition(Lcom/voovio/sweep/Transition;I)V

    goto :goto_0

    :pswitch_1
    sget v3, Lcom/voovio/sweep/Voovio;->REG_TRANSITION_DST:I

    invoke-virtual {p1, p0, v3}, Lcom/voovio/sweep/Voovio;->RegisterTransition(Lcom/voovio/sweep/Transition;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/voovio/voo3d/data/Vector3;

    iput-object v2, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v2, v2, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v2, v2, v5

    iget-boolean v2, v2, Lcom/voovio/sweep/Portal;->m_bI:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v2, v2, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Portal;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    :goto_0
    aput-object v2, v3, v4

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    aput-object v4, v2, v3

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_1
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    :goto_2
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v2, v2, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_4
    sget-object v2, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v1, v2, v6, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    goto/16 :goto_3

    :cond_6
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    neg-float v2, v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    neg-float v2, v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v5, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v4, v4, v5

    sget-object v5, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v4, v5}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    goto/16 :goto_3
.end method

.method public FromAngle(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/Transition;->FromAngle(FF)V

    return-void
.end method

.method public FromAngle(FF)V
    .locals 41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/voovio/sweep/Voovio;

    const/high16 v18, -0x3cea0000

    const v14, 0x4315cccd

    const/high16 v36, 0x3f000000

    move-object/from16 v0, v25

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v20, v36, v37

    move-object/from16 v0, v25

    iget v15, v0, Lcom/voovio/sweep/Voovio;->m_fF:F

    const/high16 v36, 0x40000000

    add-float v37, v15, v18

    div-float v37, v20, v37

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->atan(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    const v37, 0x42652ee0

    mul-float v17, v36, v37

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v36, 0x42b40000

    cmpl-float v36, v10, v36

    if-lez v36, :cond_0

    const/high16 v10, 0x42b40000

    :cond_0
    const/16 v36, 0x0

    cmpl-float v36, p1, v36

    if-ltz v36, :cond_2

    const/high16 v12, 0x3f800000

    :goto_0
    add-float v21, v15, v18

    mul-float v36, v21, v21

    mul-float v37, v20, v20

    add-float v36, v36, v37

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v19, v0

    const/high16 v36, 0x42480000

    div-float v36, v36, v19

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v11, v0

    sub-float v36, v17, v11

    cmpl-float v36, v10, v36

    if-lez v36, :cond_1

    sub-float v10, v17, v11

    :cond_1
    mul-float p1, v12, v10

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v31, v0

    sget-object v36, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v32

    new-instance v4, Lcom/voovio/sweep/Transform;

    invoke-direct {v4}, Lcom/voovio/sweep/Transform;-><init>()V

    new-instance v36, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v39, v0

    invoke-direct/range {v36 .. v39}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Lcom/voovio/sweep/Transform;->Init()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Lcom/voovio/sweep/Transform;->Init()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    new-instance v37, Lcom/voovio/voo3d/data/Vector3;

    const/16 v38, 0x0

    neg-float v0, v12

    move/from16 v39, v0

    mul-float v39, v39, v10

    const/16 v40, 0x0

    invoke-direct/range {v37 .. v40}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual/range {v36 .. v37}, Lcom/voovio/sweep/Transform;->Rotate(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v34, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v36, v0

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v38, v0

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    const v36, 0x3c8efa35

    mul-float v36, v36, p1

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x3f800000

    sub-float v36, v36, v37

    mul-float v13, v18, v36

    const v36, 0x3c8efa35

    mul-float v36, v36, p1

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    mul-float v16, v18, v36

    new-instance v35, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v35

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v13, v1, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->add(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/voovio/sweep/Transform;->TransformWith(Lcom/voovio/sweep/Transform;)V

    const/16 v22, 0x0

    :goto_1
    const/16 v36, 0x2

    move/from16 v0, v22

    move/from16 v1, v36

    if-lt v0, v1, :cond_3

    add-float v36, v18, v14

    const v37, 0x3c8efa35

    mul-float v37, v37, p1

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    sub-float v13, v36, v18

    add-float v36, v18, v14

    const v37, 0x3c8efa35

    mul-float v37, v37, p1

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    mul-float v16, v36, v37

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v8, v0, [F

    const/16 v36, 0x0

    const/high16 v37, 0x43160000

    aput v37, v8, v36

    const/16 v36, 0x1

    aput v13, v8, v36

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v9, v0, [F

    const/16 v36, 0x0

    const/16 v37, 0x0

    aput v37, v9, v36

    const/16 v36, 0x1

    aput v16, v9, v36

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v5, v0, [F

    const/16 v36, 0x0

    const/16 v37, 0x0

    aput v37, v5, v36

    const/16 v36, 0x1

    aput p2, v5, v36

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v7, v0, [F

    const/16 v36, 0x0

    const/16 v37, 0x0

    aput v37, v7, v36

    const/16 v36, 0x1

    mul-float v37, v12, v10

    aput v37, v7, v36

    new-instance v23, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct/range {v23 .. v23}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    new-instance v24, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct/range {v24 .. v24}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    const/16 v22, 0x0

    :goto_2
    const/16 v36, 0x2

    move/from16 v0, v22

    move/from16 v1, v36

    if-lt v0, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    const v36, 0x3c8efa35

    mul-float v36, v36, p1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return-void

    :cond_2
    const/high16 v12, -0x40800000

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    aget-object v36, v36, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    aget-object v37, v37, v22

    invoke-virtual/range {v36 .. v37}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    aget-object v36, v36, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    :cond_4
    aget v36, v8, v22

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v27

    aget v36, v9, v22

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v30

    sget-object v36, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    aget v37, v5, v22

    invoke-static/range {v36 .. v37}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v29

    iget-object v0, v4, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v31 .. v31}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v33

    aget v36, v7, v22

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->rotationY(F)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, v4, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-object v36, v36, v37

    aget-object v36, v36, v22

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-object v36, v36, v37

    aget-object v36, v36, v22

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-object v36, v36, v37

    aget-object v36, v36, v22

    aget v37, v6, v22

    invoke-virtual/range {v36 .. v37}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v36, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual/range {v23 .. v23}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v36, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual/range {v24 .. v24}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    aget-object v36, v36, v22

    sget v37, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Lcom/voovio/sweep/Portal;->m_nType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    aget-object v36, v36, v22

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    aget-object v36, v36, v22

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    aget-object v36, v36, v22

    aget v37, v6, v22

    invoke-virtual/range {v36 .. v37}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x42480000
        0x41200000
    .end array-data
.end method

.method public FromTemplate(Lcom/voovio/sweep/Template;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x442a8000

    div-float v4, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v20, v0

    const/high16 v21, 0x42480000

    cmpl-float v20, v20, v21

    if-nez v20, :cond_0

    const/high16 v20, 0x3f800000

    cmpl-float v20, v4, v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/voovio/sweep/Template;->clone(F)Lcom/voovio/sweep/Template;

    move-result-object p1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v16, v0

    sget-object v20, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    new-instance v3, Lcom/voovio/sweep/Transform;

    invoke-direct {v3}, Lcom/voovio/sweep/Transform;-><init>()V

    new-instance v20, Lcom/voovio/voo3d/data/Vector3;

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v5, 0x0

    :goto_0
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v5, v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v5, v0, :cond_3

    new-instance v9, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v9}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    new-instance v10, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v10}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    const/4 v5, 0x0

    :goto_2
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v5, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/voovio/sweep/Transform;->Init()V

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    new-instance v21, Lcom/voovio/voo3d/data/Vector3;

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAngulo:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual/range {v20 .. v21}, Lcom/voovio/sweep/Transform;->Rotate(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    new-instance v8, Lcom/voovio/voo3d/data/Vector3;

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v8, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    new-instance v7, Lcom/voovio/voo3d/data/Vector3;

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v7, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fOffset:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/voovio/voo3d/data/Vector3;->add(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v19, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAvance:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAltura:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v22, v0

    aget-object v22, v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fLateral:F

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/voovio/voo3d/data/Vector3;->add(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/voovio/sweep/Transform;->TransformWith(Lcom/voovio/sweep/Transform;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    invoke-virtual/range {v20 .. v21}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAvance:[F

    move-object/from16 v20, v0

    aget v20, v20, v5

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fLateral:[F

    move-object/from16 v20, v0

    aget v20, v20, v5

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v15

    sget-object v20, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAltura:[F

    move-object/from16 v21, v0

    aget v21, v21, v5

    invoke-static/range {v20 .. v21}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v11

    invoke-static {v12, v15}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v14

    iget-object v0, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    move-object/from16 v20, v0

    aget v20, v20, v5

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->rotationY(F)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, v3, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aget-object v20, v20, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    move-object/from16 v21, v0

    aget v21, v21, v5

    invoke-virtual/range {v20 .. v21}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v9}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    invoke-virtual {v9, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v10}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aget-object v20, v20, v5

    sget v21, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/voovio/sweep/Portal;->m_nType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aget-object v20, v20, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    move-object/from16 v21, v0

    aget v21, v21, v5

    invoke-virtual/range {v20 .. v21}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method public FromTranslation(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 13

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/sweep/Voovio;

    iget-object v3, v9, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/sweep/Voovio;

    iget-object v7, v9, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/sweep/Transform;

    invoke-direct {v0}, Lcom/voovio/sweep/Transform;-><init>()V

    new-instance v9, Lcom/voovio/voo3d/data/Vector3;

    iget v10, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/4 v11, 0x0

    iget v12, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v9, v10, v11, v12}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v9}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/voovio/sweep/Transform;->Init()V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/voovio/sweep/Transform;->Init()V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, p1}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v9, 0x2

    if-lt v1, v9, :cond_0

    invoke-virtual {p1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-result v5

    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    new-instance v2, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v2}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x2

    if-lt v1, v9, :cond_1

    invoke-direct {p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v9

    iput v9, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iget v9, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iput v9, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return-void

    :cond_0
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v6, v5}, Lcom/voovio/sweep/Transition;->GetIntermediatePoint(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    :goto_2
    iget-object v9, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v9, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v8}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    const/high16 v10, 0x42480000

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v9}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    invoke-virtual {v2, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    sget v10, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    iput v10, v9, Lcom/voovio/sweep/Portal;->m_nType:I

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v8}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    const/high16 v10, 0x41200000

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    sget-object v9, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    const v10, 0x3dcccccd

    invoke-static {v9, v10}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    goto :goto_2
.end method

.method public GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 5

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v3, v3, v4

    iget-object v2, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v4, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    :goto_0
    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v4, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v3, v4, :cond_1

    const v0, 0x3dcccccd

    :goto_1
    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    return-void

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_0

    :cond_1
    const v0, -0x42333333

    goto :goto_1
.end method

.method public GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v1, -0x40800000

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v0, v1, v4

    :goto_0
    invoke-virtual {p0, p2}, Lcom/voovio/sweep/Transition;->GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p3, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v1, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, p2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v1, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, p3}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {p3, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p3, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    :cond_4
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    mul-float/2addr v1, p1

    invoke-virtual {p3, v1}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    goto :goto_1
.end method

.method public RemoveVoovio(I)V
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/Voovio;->UnRegisterTransition(Lcom/voovio/sweep/Transition;)V

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    invoke-static {v0, p1}, Lcom/voovio/util/ArrayUtil;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    invoke-static {v0, p1}, Lcom/voovio/util/ArrayUtil;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    return-void
.end method

.method public RemoveVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 3

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    :cond_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/voovio/sweep/Transition;->RemoveVoovio(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Setup()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v0, v0, v1

    iput-boolean v2, v0, Lcom/voovio/sweep/Portal;->m_bI:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    const/high16 v0, 0x42700000

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_fD:F

    return-void
.end method

.method public TestTransition(ILcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/scenegraph/Camera3D;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v0, v0, p1

    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v0, v0, v3

    invoke-virtual {v0, p2, p3}, Lcom/voovio/sweep/Portal;->TestGoAcross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p4}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    const/high16 v0, 0x42700000

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_fD:F

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2
.end method

.method public TranslateRearPortalToVoovioOrigin()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iget-object v2, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v3, 0x3dcccccd

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v2, v2, v6

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void
.end method

.method public clone()Lcom/voovio/sweep/Transition;
    .locals 2

    new-instance v0, Lcom/voovio/sweep/Transition;

    invoke-direct {v0}, Lcom/voovio/sweep/Transition;-><init>()V

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iput-object v1, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    iput-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    iput-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/sweep/Transition;->clone()Lcom/voovio/sweep/Transition;

    move-result-object v0

    return-object v0
.end method

.method public getAngleBetweenPortalNormals()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    return v0
.end method

.method public getAngleToV1(Lcom/voovio/voo3d/data/Vector3;)F
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    sget-object v5, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v4, v5}, Lcom/voovio/voo3d/data/Vector3;->dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v1

    mul-float v3, v1, v2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    :cond_0
    return v0
.end method

.method public getRotationAngle()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return v0
.end method

.method public getWalkingSteps()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    return v0
.end method

.method public isRotation()Z
    .locals 2

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotationAngle(F)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return-void
.end method

.method public setWalkingSteps(F)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    return-void
.end method
