.class public Lcom/google/android/finsky/adapters/ImageStripAdapter;
.super Ljava/lang/Object;
.source "ImageStripAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;,
        Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mImageChildTappedListener:Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;

.field private final mImageCount:I

.field private final mImageDimensions:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

.field private mImageIndexOffset:I

.field private final mImages:[Landroid/graphics/drawable/Drawable;

.field private final mLoadVideoFilmOverlay:Z

.field private mVideoChildTappedListener:Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;

.field private final mVideoCount:I

.field private final mVideoFrameWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;IIZILcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput p3, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    iput p4, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    iget v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    iget v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    iput v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageIndexOffset:I

    iput-boolean p5, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mLoadVideoFilmOverlay:Z

    iput p6, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoFrameWidth:I

    iput-object p7, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageChildTappedListener:Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;

    iput-object p8, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoChildTappedListener:Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/ImageStripAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toVideoIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/ImageStripAdapter;)Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoChildTappedListener:Lcom/google/android/finsky/adapters/ImageStripAdapter$OnVideoChildViewTapListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/ImageStripAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toImageIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/ImageStripAdapter;)Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageChildTappedListener:Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;

    return-object v0
.end method

.method private toImageIndex(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageIndexOffset:I

    sub-int v0, p1, v0

    return v0
.end method

.method private toVideoIndex(I)I
    .locals 0

    return p1
.end method


# virtual methods
.method public getChildCount()I
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    iget v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageAt(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImageDimensionAt(ILcom/google/android/finsky/protos/Doc$Image$Dimension;F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    :goto_0
    iput-boolean v3, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasWidth:Z

    iput-boolean v3, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasHeight:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    iput v1, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    iput v1, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    goto :goto_0

    :cond_1
    iput v2, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    iput v2, p2, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    goto :goto_0
.end method

.method public getViewAt(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    if-ge p3, v3, :cond_1

    const v3, 0x7f04013d

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/VideoFrame;

    iget-boolean v3, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mLoadVideoFilmOverlay:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/VideoFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoFrameWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/layout/VideoFrame;->configureFilmOverlay(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :cond_0
    const v3, 0x7f0901cc

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/VideoFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/android/finsky/adapters/ImageStripAdapter$1;

    invoke-direct {v3, p0, p3}, Lcom/google/android/finsky/adapters/ImageStripAdapter$1;-><init>(Lcom/google/android/finsky/adapters/ImageStripAdapter;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/VideoFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v2

    :cond_1
    const v3, 0x7f040009

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/google/android/finsky/adapters/ImageStripAdapter$2;

    invoke-direct {v3, p0, p3}, Lcom/google/android/finsky/adapters/ImageStripAdapter$2;-><init>(Lcom/google/android/finsky/adapters/ImageStripAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v0

    goto :goto_0
.end method

.method public hasImageDimensionAt(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLeadingMargin()Z
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mVideoCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setImageAt(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setImageDimensionAt(ILcom/google/android/finsky/protos/Doc$Image$Dimension;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    aput-object p2, v0, p1

    return-void
.end method

.method public unregisterAll()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    return-void
.end method
