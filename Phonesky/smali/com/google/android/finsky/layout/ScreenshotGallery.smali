.class public Lcom/google/android/finsky/layout/ScreenshotGallery;
.super Landroid/widget/FrameLayout;
.source "ScreenshotGallery.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;
.implements Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCombinedImagesToLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDetailsLoaded:Z

.field private mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

.field private mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field private mImageUrls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInFlightRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvalidateRunnable:Ljava/lang/Runnable;

.field private mLastRequestedHeight:I

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mNumImagesFailed:I

.field private mResources:Landroid/content/res/Resources;

.field private mScreenshotsSpacing:I

.field private mVideoPreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/layout/ScreenshotGallery$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/ScreenshotGallery$1;-><init>(Lcom/google/android/finsky/layout/ScreenshotGallery;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInvalidateRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    const/16 v1, 0xd

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mScreenshotsSpacing:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/adapters/ImageStripAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ScreenshotGallery;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$204(Lcom/google/android/finsky/layout/ScreenshotGallery;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNumImagesFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNumImagesFailed:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/ScreenshotGallery;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/HorizontalStrip;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    return-object v0
.end method

.method private clearPendingRequests()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method private isSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v3, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadImages()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    iput v13, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNumImagesFailed:I

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->clearPendingRequests()V

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/protos/Doc$Image;

    if-nez v4, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v10, v4, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    invoke-virtual {v9, v1, v10}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageDimensionAt(ILcom/google/android/finsky/protos/Doc$Image$Dimension;)V

    move v5, v1

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v9, v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasImageDimensionAt(I)Z

    move-result v2

    iget-object v8, v4, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    iget-boolean v9, v4, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getHeight()I

    move-result v10

    invoke-static {v9, v8, v13, v10}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->buildFifeUrlWithScaling(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v10, Lcom/google/android/finsky/layout/ScreenshotGallery$2;

    invoke-direct {v10, p0, v5, v6, v2}, Lcom/google/android/finsky/layout/ScreenshotGallery$2;-><init>(Lcom/google/android/finsky/layout/ScreenshotGallery;IIZ)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getHeight()I

    move-result v11

    invoke-virtual {v9, v8, v10, v13, v11}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v5, v10}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    if-nez v2, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    :cond_2
    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v9, v5, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private loadImagesIfNecessary()V
    .locals 15

    const/16 v1, 0x8

    const/16 v4, 0xd

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHasDetailsLoaded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasScreenshots()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v9, v7

    :goto_0
    if-eqz v9, :cond_5

    move v0, v5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getHeight()I

    move-result v10

    if-eqz v10, :cond_1

    iget v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLastRequestedHeight:I

    if-eq v10, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    if-nez v0, :cond_6

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v9, v5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v9, v7

    :goto_3
    goto :goto_0

    :cond_4
    move v9, v5

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasScreenshots()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v12

    :goto_4
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasVideoThumbnails()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v14

    :goto_6
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v12, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->isSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->isSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v14, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->isSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHasDetailsLoaded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    goto/16 :goto_4

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    move v13, v7

    :goto_7
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    if-eqz v13, :cond_10

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mScreenshotsSpacing:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setLayoutMargin(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->unregisterAll()V

    :cond_d
    const v0, 0x3f1eb852

    int-to-float v1, v10

    mul-float/2addr v0, v1

    float-to-int v6, v0

    new-instance v0, Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v13, :cond_e

    move v5, v7

    :cond_e
    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/ImageStripAdapter;-><init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;IIZILcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    iput v10, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLastRequestedHeight:I

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImages()V

    goto/16 :goto_2

    :cond_f
    move v13, v5

    goto :goto_7

    :cond_10
    const/4 v11, 0x0

    :goto_8
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iput-boolean p4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHasDetailsLoaded:Z

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImagesIfNecessary()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->unregisterAll()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v1, 0x7f0800de

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HorizontalStrip;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-direct {v0, p0, v1, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    return-void
.end method

.method public onImageChildViewTap(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToScreenshots(Lcom/google/android/finsky/api/model/Document;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImagesIfNecessary()V

    return-void
.end method

.method public onRetry()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImages()V

    return-void
.end method

.method public onVideoChildViewTap(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/android/finsky/utils/IntentUtils;->createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
