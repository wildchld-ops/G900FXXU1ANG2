.class public Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayEditorialNonAppCardView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PlayCardImageTypeSequence;


# static fields
.field private static final IMAGE_TYPES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;->IMAGE_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getImageTypePreference()[I
    .locals 1

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;->IMAGE_TYPES:[I

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_0

    const/4 v1, 0x6

    :goto_0
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;->mThumbnailAspectRatio:F

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v5}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v5, v2

    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayEditorialNonAppCardView;->mThumbnailAspectRatio:F

    div-float/2addr v5, v6

    float-to-int v4, v5

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    goto :goto_0
.end method
