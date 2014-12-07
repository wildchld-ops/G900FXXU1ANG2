.class Lcom/voovio/sweep/Voovio;
.super Ljava/lang/Object;
.source "Voovio.java"


# static fields
.field static REG_TRANSITION_DST:I

.field static REG_TRANSITION_SRC:I

.field static ROTATION_LEFT:I

.field static ROTATION_RIGHT:I

.field static STATE_BITMAPDATA:I

.field static STATE_BYTEARRAY:I

.field static STATE_DECODING:I

.field static STATE_ERROR:I

.field static STATE_LOADING:I

.field static STATE_READY:I

.field static STATE_VOID:I


# instance fields
.field m_aTransitions:[Lcom/voovio/sweep/Transition;

.field m_bCreated:Z

.field m_baImage:[B

.field m_bmImage:Landroid/graphics/Bitmap;

.field m_fF:F

.field m_fFOV:F

.field m_ibImage:Ljava/nio/IntBuffer;

.field m_nDistance:I

.field m_nHeight:I

.field m_nId:I

.field m_nImageHeight:I

.field m_nImageWidth:I

.field m_nMoveToPosition:I

.field m_nState:I

.field m_nTargetState:I

.field m_nWidth:I

.field m_oMask:Lcom/voovio/sweep/Mask;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

.field m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

.field m_vCamDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput v2, Lcom/voovio/sweep/Voovio;->REG_TRANSITION_SRC:I

    sput v1, Lcom/voovio/sweep/Voovio;->REG_TRANSITION_DST:I

    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/Voovio;->STATE_ERROR:I

    sput v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    sput v1, Lcom/voovio/sweep/Voovio;->STATE_LOADING:I

    sput v3, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    const/4 v0, 0x3

    sput v0, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    const/4 v0, 0x4

    sput v0, Lcom/voovio/sweep/Voovio;->STATE_BITMAPDATA:I

    const/4 v0, 0x5

    sput v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    sput v1, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    sput v3, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 4
    .param p1    # Lcom/voovio/sweep/Sweep;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iput-object p1, p0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_ibImage:Ljava/nio/IntBuffer;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/voovio/sweep/Transition;

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    iput-boolean v1, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    return-void
.end method


# virtual methods
.method public ComputeNearestPointInsideVolume()V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v8, 0x3dcccccd

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v0, v3, v6, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v2, v3, v6, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    :goto_0
    invoke-static {v0}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    iget-object v1, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_0
.end method

.method public Create()V
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v0}, Lcom/voovio/sweep/Mask;->Create()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    goto :goto_0
.end method

.method public CreateDefaultFrontal()V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x400

    const/16 v3, 0x2aa

    const/16 v4, 0x400

    const/16 v5, 0x2aa

    iget-object v8, p0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v8, v8, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v8, v8, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    move v6, v0

    :goto_0
    iget-object v8, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :goto_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :cond_0
    :goto_2
    const/high16 v1, 0x42480000

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/Voovio;->CreateDefaultFrontal(FIIII)V

    return-void

    :cond_1
    move v6, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v8, :cond_0

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iget-object v8, p0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    array-length v8, v8

    invoke-static {v1, v0, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_3
    if-eqz v6, :cond_6

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_4
    goto :goto_2

    :cond_5
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_3

    :cond_6
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_4
.end method

.method public CreateDefaultFrontal(FIIII)V
    .locals 4
    .param p1    # F
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v3, 0x0

    iput p2, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    iput p3, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    iput p4, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    iput p5, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    iput p1, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/high16 v0, 0x3f000000

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    neg-float v1, v1

    invoke-direct {v0, v1, v3, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1, v3, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    new-instance v0, Lcom/voovio/sweep/Mask;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/Mask;-><init>(Lcom/voovio/sweep/Voovio;)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    return-void
.end method

.method public Destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v0}, Lcom/voovio/sweep/Mask;->Destroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    goto :goto_0
.end method

.method DestroyWithoutOpenGLContext()V
    .locals 1

    iget-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v0}, Lcom/voovio/sweep/Mask;->DestroyWithoutOpenGLContext()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    goto :goto_0
.end method

.method public IsTransitionRegistered(Lcom/voovio/sweep/Transition;I)Z
    .locals 1
    .param p1    # Lcom/voovio/sweep/Transition;
    .param p2    # I

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v0, p2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public RegisterTransition(Lcom/voovio/sweep/Transition;I)V
    .locals 1
    .param p1    # Lcom/voovio/sweep/Transition;
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/voovio/sweep/Voovio;->IsTransitionRegistered(Lcom/voovio/sweep/Transition;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aput-object p1, v0, p2

    :cond_0
    return-void
.end method

.method public UnRegisterTransition(Lcom/voovio/sweep/Transition;)V
    .locals 3
    .param p1    # Lcom/voovio/sweep/Transition;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cameraDistanceFromVoovioOrigin(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Matrix4;)F
    .locals 4
    .param p1    # Lcom/voovio/voo3d/data/Vector3;
    .param p2    # Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {p1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v2, v3}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    return v3
.end method

.method public clone()Lcom/voovio/sweep/Voovio;
    .locals 2

    new-instance v0, Lcom/voovio/sweep/Voovio;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Voovio;-><init>(Lcom/voovio/sweep/Sweep;)V

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v1}, Lcom/voovio/sweep/Mask;->clone()Lcom/voovio/sweep/Mask;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    iget-object v1, v0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    iput-object v0, v1, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/sweep/Voovio;->clone()Lcom/voovio/sweep/Voovio;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 1
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V

    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F[F)V
    .locals 1
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # F
    .param p3    # [F

    invoke-static {}, Landroid/opengl/GLES11;->glPushMatrix()V

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/opengl/GLES11;->glMultMatrixf([FI)V

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v0, p1, p2}, Lcom/voovio/sweep/Mask;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    invoke-static {}, Landroid/opengl/GLES11;->glPopMatrix()V

    return-void
.end method

.method public getRotations()I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v5, v5, v7

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v5, v7

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v5, v5, v8

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v5, v8

    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v1

    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    cmpl-float v5, v0, v6

    if-gtz v5, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    cmpg-float v5, v1, v6

    if-gez v5, :cond_4

    :cond_3
    sget v5, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    or-int/2addr v4, v5

    :cond_4
    if-eqz v2, :cond_5

    cmpg-float v5, v0, v6

    if-ltz v5, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    cmpl-float v5, v1, v6

    if-lez v5, :cond_7

    :cond_6
    sget v5, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    or-int/2addr v4, v5

    :cond_7
    return v4
.end method
