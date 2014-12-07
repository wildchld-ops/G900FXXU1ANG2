.class public Lcom/google/android/finsky/layout/FifeImageView;
.super Landroid/widget/ImageView;
.source "FifeImageView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;
    }
.end annotation


# static fields
.field private static USE_NEW_ANIMATIONS:Z


# instance fields
.field mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBitmapTransformation:Lcom/google/android/finsky/utils/image/BitmapTransformation;

.field private mBlockLayout:Z

.field protected mCachedFifeUrl:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeInDuration:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field protected mImage:Lcom/google/android/finsky/protos/Doc$Image;

.field private mIsHoldingLoad:Z

.field mIsLoaded:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMayBlockLayout:Z

.field private mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mToFadeInAfterLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/layout/FifeImageView;->USE_NEW_ANIMATIONS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    iput v3, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    sget-object v1, Lcom/android/vending/R$styleable;->FifeImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/android/vending/R$styleable;->FifeImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToFadeInAfterLoad:Z

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMayBlockLayout:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/finsky/utils/image/CircleCropTransformation;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/finsky/utils/image/CircleCropTransformation;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapTransformation:Lcom/google/android/finsky/utils/image/BitmapTransformation;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFadeInDuration:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/FifeImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/FifeImageView;->loadFromCache(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private blockLayoutIfPossible()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMayBlockLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBlockLayout:Z

    :cond_0
    return-void
.end method

.method private getFifeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v8, v9, :cond_3

    move v3, v5

    :goto_0
    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v8, v9, :cond_4

    move v2, v5

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_0
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    if-eqz v4, :cond_2

    if-nez v0, :cond_8

    :cond_2
    move-object v5, v7

    :goto_2
    return-object v5

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_6
    if-nez v4, :cond_7

    move-object v5, v7

    goto :goto_2

    :cond_7
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_8

    iget v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v4, v0}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->buildFifeUrlWithScaling(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_9
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_a

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_8

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    if-lez v5, :cond_b

    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_b
    if-nez v0, :cond_c

    move-object v5, v7

    goto :goto_2

    :cond_c
    iget v4, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    goto :goto_3
.end method

.method private getImageUrlToLoad(Lcom/google/android/finsky/protos/Doc$Image;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mCachedFifeUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mCachedFifeUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->getFifeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mCachedFifeUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mCachedFifeUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private invokeOnLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;->onLoaded(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private static isFinalBitmapLoaded(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFromCache(Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    return-void
.end method


# virtual methods
.method protected clearCachedData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mCachedFifeUrl:Ljava/lang/String;

    return-void
.end method

.method public clearCachedState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->invalidate()V

    return-void
.end method

.method protected getImageToLoad()Lcom/google/android/finsky/protos/Doc$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    return-object v0
.end method

.method public holdLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsHoldingLoad:Z

    return-void
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadImageIfNecessary(Z)V
    .locals 11

    const/4 v10, 0x0

    iget-boolean v9, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsHoldingLoad:Z

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v2

    if-nez v8, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getImageToLoad()Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/FifeImageView;->getImageUrlToLoad(Lcom/google/android/finsky/protos/Doc$Image;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/layout/FifeImageView;->isFinalBitmapLoaded(Landroid/graphics/Bitmap;)Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    :cond_5
    iget-object v9, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v9, v7, p0, v8, v2}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/FifeImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v9, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapTransformation:Lcom/google/android/finsky/utils/image/BitmapTransformation;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapTransformation:Lcom/google/android/finsky/utils/image/BitmapTransformation;

    invoke-interface {v9, v0}, Lcom/google/android/finsky/utils/image/BitmapTransformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    move-object v1, v0

    invoke-static {v1}, Lcom/google/android/finsky/layout/FifeImageView;->isFinalBitmapLoaded(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz p1, :cond_7

    iget-boolean v9, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMayBlockLayout:Z

    if-eqz v9, :cond_8

    :cond_7
    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/layout/FifeImageView;->loadFromCache(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_8
    iget-object v9, p0, Lcom/google/android/finsky/layout/FifeImageView;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/google/android/finsky/layout/FifeImageView$1;

    invoke-direct {v10, p0, v1, v4}, Lcom/google/android/finsky/layout/FifeImageView$1;-><init>(Lcom/google/android/finsky/layout/FifeImageView;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v10}, Lcom/google/android/finsky/layout/FifeImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapTransformation:Lcom/google/android/finsky/utils/image/BitmapTransformation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapTransformation:Lcom/google/android/finsky/utils/image/BitmapTransformation;

    invoke-interface {v2, v0}, Lcom/google/android/finsky/utils/image/BitmapTransformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToFadeInAfterLoad:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/google/android/finsky/layout/FifeImageView;->USE_NEW_ANIMATIONS:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFadeInAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFadeInAnimation:Landroid/view/animation/Animation;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFadeInDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/FifeImageView;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method

.method public releaseLoading(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsHoldingLoad:Z

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBlockLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBitmapTransformation(Lcom/google/android/finsky/utils/image/BitmapTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapTransformation:Lcom/google/android/finsky/utils/image/BitmapTransformation;

    return-void
.end method

.method public setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->clearCachedData()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    :cond_0
    iput-object p2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FifeImageView;->blockLayoutIfPossible()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBlockLayout:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FifeImageView;->blockLayoutIfPossible()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBlockLayout:Z

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FifeImageView;->blockLayoutIfPossible()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBlockLayout:Z

    return-void
.end method

.method declared-synchronized setLoaded(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FifeImageView;->invokeOnLoaded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    return-void
.end method

.method public setOnLoadedListener(Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->invalidate()V

    :cond_0
    return-void
.end method
