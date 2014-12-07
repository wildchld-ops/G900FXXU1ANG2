.class public Lcom/google/android/finsky/layout/DocImageView;
.super Lcom/google/android/finsky/layout/FifeImageView;
.source "DocImageView.java"


# instance fields
.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mImageTypes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DocImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    return-void

    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data
.end method

.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mImageTypes:[I

    invoke-static {v2, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->clearCachedData()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/layout/DocImageView;->mImageTypes:[I

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DocImageView;->setLoaded(Z)V

    :cond_0
    iput-object p2, p0, Lcom/google/android/finsky/layout/DocImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DocImageView;->loadImageIfNecessary(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected clearCachedData()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/FifeImageView;->clearCachedData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DocImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    return-void
.end method

.method protected getImageToLoad()Lcom/google/android/finsky/protos/Doc$Image;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DocImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DocImageView;->mImageTypes:[I

    invoke-static {v2, v4, v0, v3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/DocImageView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DocImageView;->mImageTypes:[I

    invoke-static {v2, v1, v4, v3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v2

    goto :goto_1
.end method
