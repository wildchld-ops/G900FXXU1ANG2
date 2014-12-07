.class public Lcom/sec/android/app/camera/CaptureData;
.super Ljava/lang/Object;
.source "CaptureData.java"


# static fields
.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_NORMAL_WIDTH:I

.field private static final SCREEN_WIDE_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "CaptureData"


# instance fields
.field private mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

.field private mCaptureOnlyData:[B

.field private mDecodingData:[B

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/CaptureData;->FULL_SCREEN_WIDTH:I

    const v0, 0x7f090001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/CaptureData;->FULL_SCREEN_HEIGHT:I

    const v0, 0x7f090002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/CaptureData;->SCREEN_WIDE_WIDTH:I

    const v0, 0x7f090004

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/CaptureData;->SCREEN_NORMAL_WIDTH:I

    const v0, 0x7f090005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/CaptureData;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mDecodingData:[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mDecodingData:[B

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/16 v0, 0x1e0

    const/16 v1, 0x168

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureData()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    return-object v0
.end method

.method public getCaptureSmallBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const/16 v1, 0x54

    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CaptureData;->mOrientation:I

    return v0
.end method

.method public getReviewBitmap(Z)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    if-eqz v3, :cond_2

    new-instance v2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    const/4 v3, 0x7

    iput v3, v2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x1

    iput v3, v2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    if-eqz p1, :cond_1

    sget v3, Lcom/sec/android/app/camera/CaptureData;->SCREEN_WIDE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/CaptureData;->SCREEN_HEIGHT:I

    invoke-static {v1, v3, v4, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    sget v3, Lcom/sec/android/app/camera/CaptureData;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/CaptureData;->FULL_SCREEN_HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :goto_2
    return-object v3

    :cond_1
    sget v3, Lcom/sec/android/app/camera/CaptureData;->SCREEN_NORMAL_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/CaptureData;->SCREEN_HEIGHT:I

    invoke-static {v1, v3, v4, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CaptureData"

    const-string v4, "ByteArrayInputStream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2
.end method

.method public setCaptureData([BI)V
    .locals 6

    const/16 v5, 0x1e0

    const/16 v4, 0x168

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iput v3, p0, Lcom/sec/android/app/camera/CaptureData;->mOrientation:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mDecodingData:[B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    array-length v2, v2

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CaptureData;->mOrientation:I

    return-void
.end method
