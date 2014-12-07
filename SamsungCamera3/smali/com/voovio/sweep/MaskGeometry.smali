.class Lcom/voovio/sweep/MaskGeometry;
.super Ljava/lang/Object;
.source "MaskGeometry.java"


# static fields
.field private static SLICES:I


# instance fields
.field private m_fbTexCoords:Ljava/nio/FloatBuffer;

.field private m_fbVertices:Ljava/nio/FloatBuffer;

.field private m_nIndices:I

.field private m_sbIndices:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    sput v0, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CreateDefaultFrontal(Lcom/voovio/sweep/Sweep;)V
    .locals 36
    .param p1    # Lcom/voovio/sweep/Sweep;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v23, v0

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v31, v31, 0x1

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v31, v31, 0x1

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    const v9, 0x3dcccccd

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000

    div-float v14, v31, v32

    const/high16 v31, 0x3f800000

    const/high16 v32, 0x40000000

    mul-float v32, v32, v9

    add-float v31, v31, v32

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    const/high16 v32, 0x40000000

    div-float v10, v31, v32

    const/high16 v31, 0x3f000000

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v32, v0

    const v33, 0x3c8efa35

    mul-float v32, v32, v33

    const/high16 v33, 0x40000000

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->tan(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    div-float v8, v31, v32

    move v6, v8

    div-float v31, v14, v6

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->atan(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v11, v0

    mul-float v31, v14, v14

    mul-float v32, v6, v6

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v12, v0

    const/16 v17, 0x0

    neg-float v13, v11

    const/high16 v31, 0x40000000

    mul-float v31, v31, v11

    sget v32, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v7, v31, v32

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    new-array v4, v0, [F

    const/4 v15, 0x0

    :goto_0
    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v31

    if-le v15, v0, :cond_0

    const/16 v19, 0x0

    :goto_1
    const/16 v31, 0x2

    move/from16 v0, v19

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    mul-int/lit8 v31, v25, 0x3

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v25

    if-lt v15, v0, :cond_d

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v31, v25, 0x2

    move/from16 v0, v31

    new-array v5, v0, [F

    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v25

    if-lt v15, v0, :cond_e

    array-length v0, v5

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    mul-int/lit8 v31, v31, 0x6

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [S

    move-object/from16 v18, v0

    const/16 v17, 0x0

    const/4 v15, 0x0

    :goto_4
    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v31

    if-lt v15, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    float-to-double v0, v13

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v12, v31

    mul-float v31, v10, v12

    mul-float v32, v30, v30

    mul-float v33, v6, v6

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    aput v31, v4, v15

    add-float/2addr v13, v7

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_1
    neg-float v13, v11

    const/4 v15, 0x0

    :goto_5
    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v31

    if-le v15, v0, :cond_2

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    :cond_2
    new-instance v32, Lcom/voovio/voo3d/data/Vector3;

    float-to-double v0, v13

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v12

    sub-float v33, v31, v6

    if-nez v19, :cond_5

    aget v31, v4, v15

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    :goto_6
    float-to-double v0, v13

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v12

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    aput-object v32, v21, v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v31, v0

    if-nez v31, :cond_7

    :cond_3
    new-instance v32, Lcom/voovio/geometry/Point;

    int-to-float v0, v15

    move/from16 v31, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v31, v33

    sget v33, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v33, v31, v33

    if-nez v19, :cond_6

    const/high16 v31, 0x3f800000

    add-float v31, v31, v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v31, v31, v34

    :goto_7
    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    aput-object v32, v20, v17

    :cond_4
    :goto_8
    add-int/lit8 v17, v17, 0x1

    add-float/2addr v13, v7

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    :cond_5
    aget v31, v4, v15

    goto :goto_6

    :cond_6
    neg-float v0, v9

    move/from16 v31, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v31, v31, v34

    goto :goto_7

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    new-instance v32, Lcom/voovio/geometry/Point;

    if-nez v19, :cond_8

    const/high16 v31, 0x3f800000

    add-float v31, v31, v9

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v31, v33

    :goto_9
    sget v33, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    sub-int v33, v33, v15

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v33, v33, v34

    sget v34, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    aput-object v32, v20, v17

    goto :goto_8

    :cond_8
    neg-float v0, v9

    move/from16 v31, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v31, v33

    goto :goto_9

    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    new-instance v32, Lcom/voovio/geometry/Point;

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    sub-int v31, v31, v15

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v31, v33

    sget v33, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v33, v31, v33

    if-nez v19, :cond_a

    neg-float v0, v9

    move/from16 v31, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v31, v31, v34

    :goto_a
    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    aput-object v32, v20, v17

    goto/16 :goto_8

    :cond_a
    const/high16 v31, 0x3f800000

    add-float v31, v31, v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v31, v31, v34

    goto :goto_a

    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    new-instance v32, Lcom/voovio/geometry/Point;

    if-nez v19, :cond_c

    neg-float v0, v9

    move/from16 v31, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v31, v33

    :goto_b
    int-to-float v0, v15

    move/from16 v33, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v33, v33, v34

    sget v34, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v33, v33, v34

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    aput-object v32, v20, v17

    goto/16 :goto_8

    :cond_c
    const/high16 v31, 0x3f800000

    add-float v31, v31, v9

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v31, v33

    goto :goto_b

    :cond_d
    aget-object v31, v21, v15

    move-object/from16 v0, v31

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v31, v0

    aput v31, v29, v19

    add-int/lit8 v31, v19, 0x1

    aget-object v32, v21, v15

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v32, v0

    aput v32, v29, v31

    add-int/lit8 v31, v19, 0x2

    aget-object v32, v21, v15

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v32, v0

    aput v32, v29, v31

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v19, v19, 0x3

    goto/16 :goto_2

    :cond_e
    aget-object v31, v20, v15

    move-object/from16 v0, v31

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v31, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    aput v31, v5, v19

    add-int/lit8 v31, v19, 0x1

    aget-object v32, v20, v15

    move-object/from16 v0, v32

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v32, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    aput v32, v5, v31

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v19, v19, 0x2

    goto/16 :goto_3

    :cond_f
    int-to-short v0, v15

    move/from16 v31, v0

    aput-short v31, v18, v17

    add-int/lit8 v17, v17, 0x1

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v31, v31, 0x1

    add-int v31, v31, v15

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    aput-short v31, v18, v17

    add-int/lit8 v17, v17, 0x1

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v31, v31, 0x1

    add-int v31, v31, v15

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    aput-short v31, v18, v17

    add-int/lit8 v17, v17, 0x1

    int-to-short v0, v15

    move/from16 v31, v0

    aput-short v31, v18, v17

    add-int/lit8 v17, v17, 0x1

    sget v31, Lcom/voovio/sweep/MaskGeometry;->SLICES:I

    add-int/lit8 v31, v31, 0x1

    add-int v31, v31, v15

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    aput-short v31, v18, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v31, v15, 0x1

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    aput-short v31, v18, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 7
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # F

    const v6, 0x8078

    const v5, 0x8074

    const/16 v4, 0x1406

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    invoke-static {v5}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    invoke-static {v6}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/voovio/sweep/MaskGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static {v0, v4, v3, v1}, Landroid/opengl/GLES11;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/voovio/sweep/MaskGeometry;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-static {v0, v4, v3, v1}, Landroid/opengl/GLES11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-static {v2, v2, v2, p2}, Landroid/opengl/GLES11;->glColor4f(FFFF)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/voovio/sweep/MaskGeometry;->m_nIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/voovio/sweep/MaskGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES11;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {v5}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    invoke-static {v6}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    return-void
.end method
