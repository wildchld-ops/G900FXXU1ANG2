.class public Lcom/google/android/finsky/utils/image/CircleCropTransformation;
.super Ljava/lang/Object;
.source "CircleCropTransformation.java"

# interfaces
.implements Lcom/google/android/finsky/utils/image/BitmapTransformation;


# instance fields
.field private mCropPaint:Landroid/graphics/Paint;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mRectangle:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mOutlinePaint:Landroid/graphics/Paint;

    const v2, 0x7f07004e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x3fc00000

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v2, v3

    iget-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mCropPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v9, 0x0

    const/high16 v10, 0x40000000

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v6, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    add-int/lit8 v7, v5, -0x1

    int-to-float v7, v7

    add-int/lit8 v8, v5, -0x1

    int-to-float v8, v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v1

    iget-object v9, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    div-float v8, v2, v10

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->top:F

    div-float v8, v2, v10

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    div-float v8, v2, v10

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    div-float v8, v2, v10

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mRectangle:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/finsky/utils/image/CircleCropTransformation;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
