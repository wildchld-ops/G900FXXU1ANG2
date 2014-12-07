.class public Lcom/google/android/finsky/widget/WidgetModel;
.super Ljava/lang/Object;
.source "WidgetModel.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;,
        Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;,
        Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mDocumentTypes:[I

.field private final mImageHeightResource:I

.field private final mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/google/android/finsky/api/model/DfeList;

.field private mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

.field private mLoadedImagesSoFar:I

.field private mMaxHeight:I

.field private final mMaxItems:I

.field private mSize:I

.field private mUpdatePending:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;[ILcom/google/android/finsky/widget/WidgetModel$ImageSelector;II)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p2    # [I
    .param p3    # Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;
    .param p4    # I
    .param p5    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    iput p5, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxItems:I

    invoke-static {p5}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetModel;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p2, p0, Lcom/google/android/finsky/widget/WidgetModel;->mDocumentTypes:[I

    iput-object p3, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    iput p4, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageHeightResource:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/WidgetModel;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/WidgetModel;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V

    return-void
.end method

.method private bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .param p3    # I

    iget v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    invoke-virtual {p2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    new-instance v0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;

    invoke-virtual {p2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    move v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/widget/WidgetModel;->loadViewsIfDone()V

    return-void
.end method

.method private isValidDocument(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mDocumentTypes:[I

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasDocumentType()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mDocumentTypes:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    if-eq v4, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private loadViewsIfDone()V
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    iget v1, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

    invoke-interface {v0}, Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;->onData()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iput-boolean v9, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    iput v9, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v6

    iget v7, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxItems:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    iget v7, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxHeight:I

    invoke-interface {v6, v0, v7}, Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;->getImageUrl(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    invoke-interface {v6, v0}, Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;->getImageType(Lcom/google/android/finsky/api/model/Document;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/widget/WidgetModel;->isValidDocument(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    invoke-direct {p0}, Lcom/google/android/finsky/widget/WidgetModel;->loadViewsIfDone()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v7, Lcom/google/android/finsky/widget/WidgetModel$1;

    invoke-direct {v7, p0, v0, v1}, Lcom/google/android/finsky/widget/WidgetModel$1;-><init>(Lcom/google/android/finsky/widget/WidgetModel;Lcom/google/android/finsky/api/model/Document;I)V

    iget v8, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxHeight:I

    invoke-virtual {v6, v5, v7, v9, v8}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/finsky/widget/WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/widget/WidgetModel;->loadViewsIfDone()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public refresh(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    iput-object p4, p0, Lcom/google/android/finsky/widget/WidgetModel;->mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageHeightResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxHeight:I

    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
