.class public final Lcom/voovio/sweep/Sweep;
.super Ljava/lang/Object;
.source "Sweep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/Sweep$NodeInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_FOV_V:F = 50.0f

.field static final DEFAULT_IMAGE_ASPECT:F = 1.5f

.field static final DEFAULT_IMAGE_HEIGHT:I = 0x2aa

.field static final DEFAULT_IMAGE_WIDTH:I = 0x400

.field public static KEYWORD:Ljava/lang/String; = null

.field static final RADIOUS_OFFSET:F = -150.0f

.field static final SWEEP_STATE_COMPLETE:I = 0x3

.field static final SWEEP_STATE_ERROR:I = -0x1

.field static final SWEEP_STATE_LOADING:I = 0x1

.field static final SWEEP_STATE_READY:I = 0x2

.field static final SWEEP_STATE_VOID:I

.field public static VERSION:Ljava/lang/String;


# instance fields
.field m_aTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Transition;",
            ">;"
        }
    .end annotation
.end field

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

.field m_fFOV:F

.field m_nHeight:I

.field m_nImageHeight:I

.field m_nImageWidth:I

.field m_nOrientation:I

.field m_nState:I

.field m_nWidth:I

.field m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1.6.16 03/03/2014"

    sput-object v0, Lcom/voovio/sweep/Sweep;->VERSION:Ljava/lang/String;

    const-string v0, "Voovio_Sweep_VirtualTour"

    sput-object v0, Lcom/voovio/sweep/Sweep;->KEYWORD:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    new-instance v0, Lcom/voovio/sweep/MaskGeometry;

    invoke-direct {v0}, Lcom/voovio/sweep/MaskGeometry;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    return-void
.end method

.method public static final TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;
    .locals 6

    const/high16 v5, 0x43960000

    const/high16 v4, 0x41a00000

    invoke-virtual {p0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v3, 0x43c80000

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x432f0000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    iput v5, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v3, 0x43160000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, v5, v2

    iget v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    :cond_2
    return-object v1
.end method

.method public static Voovio_Sweep_VirtualTour()V
    .locals 0

    return-void
.end method

.method private appendVoovio([B)V
    .locals 6

    new-instance v0, Lcom/voovio/sweep/Voovio;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/Voovio;-><init>(Lcom/voovio/sweep/Sweep;)V

    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iput-object p1, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iget v2, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v3, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v4, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v5, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/Voovio;->CreateDefaultFrontal(FIIII)V

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static checkInputs([[B[Lcom/voovio/sweep/Template;)Lcom/voovio/geometry/Point;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/voovio/sweep/SweepException;
        }
    .end annotation

    array-length v5, p0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Images must be at least 2"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    array-length v5, p1

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: The number of Templates must be equal to the number of Photos minus one"

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_2

    new-instance v5, Lcom/voovio/geometry/Point;

    int-to-float v6, v2

    int-to-float v7, v1

    invoke-direct {v5, v6, v7}, Lcom/voovio/geometry/Point;-><init>(FF)V

    return-object v5

    :cond_2
    aget-object v5, p0, v0

    const/4 v6, 0x0

    aget-object v7, p0, v0

    array-length v7, v7

    invoke-static {v5, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v0, :cond_3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v5, 0x800

    if-le v3, v5, :cond_5

    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: Maximum allowed dimension is 2048 pixels."

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v5, v2, :cond_4

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v5, v1, :cond_5

    :cond_4
    new-instance v5, Lcom/voovio/sweep/SweepException;

    const-string v6, "Parameters exception: All Photos must have the same size."

    invoke-direct {v5, v6}, Lcom/voovio/sweep/SweepException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final createSweep([[BI[Lcom/voovio/sweep/Template;[Lcom/voovio/voo3d/data/Vector3;[F)Lcom/voovio/sweep/Sweep;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/voovio/sweep/SweepException;
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/voovio/sweep/Sweep;->checkInputs([[B[Lcom/voovio/sweep/Template;)Lcom/voovio/geometry/Point;

    move-result-object v9

    const/4 v10, 0x6

    move/from16 v0, p1

    if-eq v0, v10, :cond_1

    const/16 v10, 0x8

    move/from16 v0, p1

    if-eq v0, v10, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v10, v9, Lcom/voovio/geometry/Point;->y:F

    float-to-int v6, v10

    :goto_1
    if-eqz v2, :cond_3

    iget v10, v9, Lcom/voovio/geometry/Point;->x:F

    float-to-int v5, v10

    :goto_2
    int-to-float v10, v6

    int-to-float v11, v5

    div-float v1, v10, v11

    new-instance v7, Lcom/voovio/sweep/Sweep;

    invoke-direct {v7}, Lcom/voovio/sweep/Sweep;-><init>()V

    move/from16 v0, p1

    iput v0, v7, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/high16 v10, 0x3f800000

    cmpl-float v10, v1, v10

    if-lez v10, :cond_4

    const v10, 0x43aa8000

    const-wide v11, 0x3fdbecde60000000L

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float v3, v10, v11

    const/16 v10, 0x400

    iput v10, v7, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v10, v7, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v7, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    const v10, 0x42e52ee0

    const/high16 v11, 0x3f000000

    iget v12, v7, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-double v11, v11

    float-to-double v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    iput v10, v7, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    :goto_3
    iput v6, v7, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput v5, v7, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iget-object v10, v7, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    invoke-virtual {v10, v7}, Lcom/voovio/sweep/MaskGeometry;->CreateDefaultFrontal(Lcom/voovio/sweep/Sweep;)V

    const/4 v10, 0x0

    aget-object v10, p0, v10

    invoke-virtual {v7, v10}, Lcom/voovio/sweep/Sweep;->append([B)V

    const/4 v4, 0x1

    :goto_4
    array-length v10, p0

    if-lt v4, v10, :cond_5

    :cond_0
    const/4 v10, 0x3

    iput v10, v7, Lcom/voovio/sweep/Sweep;->m_nState:I

    return-object v7

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget v10, v9, Lcom/voovio/geometry/Point;->x:F

    float-to-int v6, v10

    goto :goto_1

    :cond_3
    iget v10, v9, Lcom/voovio/geometry/Point;->y:F

    float-to-int v5, v10

    goto :goto_2

    :cond_4
    const/16 v10, 0x2aa

    iput v10, v7, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v10, v7, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v7, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    const/high16 v10, 0x42480000

    iput v10, v7, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v4, -0x1

    aget-object v10, p2, v10

    if-eqz v10, :cond_0

    add-int/lit8 v10, v4, -0x1

    aget-object v10, p2, v10

    invoke-virtual {v10}, Lcom/voovio/sweep/Template;->isRotation()Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz p3, :cond_7

    add-int/lit8 v10, v4, -0x1

    aget-object v10, p3, v10

    if-eqz v10, :cond_7

    aget-object v10, p0, v4

    add-int/lit8 v11, v4, -0x1

    aget-object v11, p3, v11

    iget v11, v11, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-int/lit8 v12, v4, -0x1

    aget-object v12, p3, v12

    iget v12, v12, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-int/lit8 v13, v4, -0x1

    aget v13, p4, v13

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/voovio/sweep/Sweep;->appendFromTurnMatchingData([BFFF)V

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    if-eqz p4, :cond_8

    add-int/lit8 v10, v4, -0x1

    aget v10, p4, v10

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_8

    add-int/lit8 v10, v4, -0x1

    aget v10, p4, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_8

    aget-object v10, p0, v4

    add-int/lit8 v11, v4, -0x1

    aget v11, p4, v11

    invoke-virtual {v7, v10, v11}, Lcom/voovio/sweep/Sweep;->appendFromAngle([BF)V

    goto :goto_5

    :cond_8
    aget-object v11, p0, v4

    add-int/lit8 v10, v4, -0x1

    aget-object v12, p2, v10

    if-eqz p4, :cond_9

    add-int/lit8 v10, v4, -0x1

    aget v10, p4, v10

    :goto_6
    invoke-virtual {v7, v11, v12, v10}, Lcom/voovio/sweep/Sweep;->appendFromTemplate([BLcom/voovio/sweep/Template;F)V

    goto :goto_5

    :cond_9
    const/high16 v10, 0x7fc00000

    goto :goto_6

    :cond_a
    if-eqz p3, :cond_c

    add-int/lit8 v10, v4, -0x1

    aget-object v10, p3, v10

    if-eqz v10, :cond_c

    aget-object v11, p0, v4

    add-int/lit8 v10, v4, -0x1

    aget-object v12, p3, v10

    if-eqz p4, :cond_b

    add-int/lit8 v10, v4, -0x1

    aget v10, p4, v10

    :goto_7
    invoke-virtual {v7, v11, v12, v10}, Lcom/voovio/sweep/Sweep;->appendFromTranslation([BLcom/voovio/voo3d/data/Vector3;F)V

    const/4 v10, 0x1

    if-le v4, v10, :cond_6

    iget-object v10, v7, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    add-int/lit8 v11, v4, -0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Transition;

    invoke-virtual {v8}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v8}, Lcom/voovio/sweep/Transition;->TranslateRearPortalToVoovioOrigin()V

    goto :goto_5

    :cond_b
    const/high16 v10, 0x7fc00000

    goto :goto_7

    :cond_c
    aget-object v11, p0, v4

    add-int/lit8 v10, v4, -0x1

    aget-object v12, p2, v10

    if-eqz p4, :cond_d

    add-int/lit8 v10, v4, -0x1

    aget v10, p4, v10

    :goto_8
    invoke-virtual {v7, v11, v12, v10}, Lcom/voovio/sweep/Sweep;->appendFromTemplate([BLcom/voovio/sweep/Template;F)V

    goto :goto_5

    :cond_d
    const/high16 v10, 0x7fc00000

    goto :goto_8
.end method


# virtual methods
.method adjustAngle(F)F
    .locals 12

    const/high16 v11, 0x3f000000

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v7, v8, :cond_1

    const/high16 v6, 0x44800000

    :goto_0
    const-wide v7, 0x4051800000000000L

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v2, v11, v7

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-ge v7, v8, :cond_0

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v8, v8

    div-float v0, v7, v8

    float-to-double v7, v0

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v2, v7

    :cond_0
    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000

    add-float v4, v7, v8

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    const-wide/high16 v8, 0x3fe0000000000000L

    iget v10, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v1, v7, v8

    const/high16 v7, -0x3cea0000

    add-float v5, v1, v7

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v7, v7

    div-float v7, v6, v7

    div-float v8, v4, v5

    mul-float/2addr v7, v8

    mul-float v3, v7, p1

    return v3

    :cond_1
    const/high16 v6, 0x43e30000

    goto :goto_0
.end method

.method append([B)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio([B)V

    iget-object v1, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    return-void
.end method

.method appendFromAngle([BF)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0, p2}, Lcom/voovio/sweep/Sweep;->adjustAngle(F)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio([B)V

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    new-instance v2, Lcom/voovio/sweep/Transition;

    invoke-direct {v2, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    invoke-virtual {v2, v3, v7}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    invoke-virtual {v2, v4, v7}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/voovio/sweep/Transition;->FromAngle(F)V

    invoke-virtual {v2, p2}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    iget-object v5, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    return-void
.end method

.method appendFromTemplate([BLcom/voovio/sweep/Template;F)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio([B)V

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    invoke-virtual {v1, v2, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    invoke-virtual {v1, v3, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTemplate(Lcom/voovio/sweep/Template;)V

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    goto :goto_0
.end method

.method appendFromTranslation([BLcom/voovio/voo3d/data/Vector3;F)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Sweep;->appendVoovio([B)V

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    new-instance v1, Lcom/voovio/sweep/Transition;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    invoke-virtual {v1, v2, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    invoke-virtual {v1, v3, v6}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    invoke-static {p2, p3}, Lcom/voovio/sweep/Sweep;->TradeOffHeuristic(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/voovio/sweep/Transition;->FromTranslation(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, p3}, Lcom/voovio/sweep/Transition;->setWalkingSteps(F)V

    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v3}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    :cond_1
    return-void
.end method

.method appendFromTurnMatchingData([BFFF)V
    .locals 20

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x43660000

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/Sweep;->appendFromAngle([BF)V

    :goto_0
    return-void

    :cond_0
    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v10, v15, v16

    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const-wide/high16 v16, 0x3fe0000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    div-float v5, v15, v16

    const/high16 v15, -0x3cea0000

    add-float v4, v5, v15

    div-float v15, v10, v4

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    double-to-float v6, v15

    mul-float v15, v10, v10

    mul-float v16, v4, v4

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v8, v15

    const/high16 v15, 0x40000000

    mul-float/2addr v15, v6

    mul-float/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v15, v16

    mul-float v15, v9, p2

    div-float/2addr v15, v8

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    double-to-float v7, v15

    move/from16 v0, p4

    float-to-double v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    double-to-float v3, v15

    mul-float v15, v7, v3

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_1

    sub-float v15, v7, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41a00000

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    :cond_1
    move v7, v3

    const/16 p3, 0x0

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/voovio/sweep/Sweep;->appendVoovio([B)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v16, v11, -0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v16, v11, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voovio/sweep/Voovio;

    new-instance v12, Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v15}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Lcom/voovio/sweep/Transition;->AddVoovio(Lcom/voovio/sweep/Voovio;Z)I

    neg-float v15, v9

    mul-float v15, v15, p3

    invoke-virtual {v12, v7, v15}, Lcom/voovio/sweep/Transition;->FromAngle(FF)V

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/voovio/sweep/Transition;->setRotationAngle(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    invoke-virtual {v14}, Lcom/voovio/sweep/Voovio;->ComputeNearestPointInsideVolume()V

    goto/16 :goto_0
.end method

.method public clone()Lcom/voovio/sweep/Sweep;
    .locals 9

    new-instance v2, Lcom/voovio/sweep/Sweep;

    invoke-direct {v2}, Lcom/voovio/sweep/Sweep;-><init>()V

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    iput-object v7, v2, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    iget v7, p0, Lcom/voovio/sweep/Sweep;->m_nState:I

    iput v7, v2, Lcom/voovio/sweep/Sweep;->m_nState:I

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-lt v0, v1, :cond_1

    return-object v2

    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v7}, Lcom/voovio/sweep/Voovio;->clone()Lcom/voovio/sweep/Voovio;

    move-result-object v4

    iput-object v2, v4, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voovio/sweep/Transition;

    invoke-virtual {v7}, Lcom/voovio/sweep/Transition;->clone()Lcom/voovio/sweep/Transition;

    move-result-object v3

    iput-object v2, v3, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v5, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    iget-object v7, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x1

    aput-object v3, v7, v8

    iget-object v7, v2, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v0

    return-object v0
.end method

.method public getImageAspect()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    if-le v0, v1, :cond_0

    const-string v0, "horizontal"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vertical"

    goto :goto_0
.end method

.method public getImageAspectRatio()F
    .locals 2

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    return v0
.end method

.method getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voovio/sweep/Voovio;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    iput v6, p1, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget v7, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v0, 0x1

    :goto_0
    if-le v0, v2, :cond_0

    return-void

    :cond_0
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    sub-int v1, v6, v0

    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    add-int v3, v6, v0

    if-ge v3, v4, :cond_1

    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ltz v1, :cond_2

    iget-object v6, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voovio/sweep/Voovio;

    iput v0, v5, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNodesInfo()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Sweep$NodeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_0

    new-instance v10, Lcom/voovio/geometry/Matrix;

    invoke-direct {v10}, Lcom/voovio/geometry/Matrix;-><init>()V

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/high16 v4, 0x42c80000

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_1

    return-object v2

    :cond_0
    new-instance v18, Lcom/voovio/sweep/Sweep$NodeInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Sweep$NodeInfo;-><init>(Lcom/voovio/sweep/Sweep;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voovio/sweep/Transition;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voovio/sweep/Sweep$NodeInfo;

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/voovio/sweep/Sweep$NodeInfo;

    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v3

    invoke-virtual {v10}, Lcom/voovio/geometry/Matrix;->identity()V

    invoke-virtual {v10, v3}, Lcom/voovio/geometry/Matrix;->rotate(F)V

    const/16 v18, 0x0

    cmpl-float v18, v3, v18

    if-nez v18, :cond_4

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    iput v3, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v18

    if-nez v18, :cond_2

    if-lez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/voovio/sweep/Transition;

    move-object/from16 v13, v18

    :goto_3
    if-nez v13, :cond_6

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    :goto_4
    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3;->getNorm()F

    move-result v18

    move/from16 v0, v18

    iput v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    :cond_2
    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/voovio/geometry/Matrix;->transformPoint(Lcom/voovio/geometry/Point;)Lcom/voovio/geometry/Point;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    new-instance v18, Lcom/voovio/geometry/Point;

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v19, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    mul-float v20, v20, v4

    add-float v19, v19, v20

    iget-object v0, v11, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v21, v0

    mul-float v21, v21, v4

    add-float v20, v20, v21

    invoke-direct/range {v18 .. v20}, Lcom/voovio/geometry/Point;-><init>(FF)V

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    sub-float v5, v18, v19

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v18, v0

    iget-object v0, v14, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v19, v0

    sub-float v6, v18, v19

    const/16 v18, 0x0

    cmpl-float v18, v3, v18

    if-nez v18, :cond_3

    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-eqz v18, :cond_3

    new-instance v17, Lcom/voovio/geometry/Point;

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/voovio/geometry/Point;-><init>(FF)V

    const/high16 v18, 0x3f000000

    mul-float v18, v18, v4

    mul-float v18, v18, v6

    div-float v7, v18, v5

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/geometry/Point;->y:F

    move/from16 v20, v0

    mul-float v20, v20, v7

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/voovio/geometry/Point;->y:F

    iget-object v0, v12, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/geometry/Point;->x:F

    move/from16 v20, v0

    mul-float v20, v20, v7

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/voovio/geometry/Point;->x:F

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_6
    iget-object v0, v13, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_4
.end method

.method public getTransition(I)Lcom/voovio/sweep/Transition;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Transition;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
