.class public Lcom/google/android/finsky/layout/play/PlayEditorialAppCardView;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayEditorialAppCardView.java"

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

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayEditorialAppCardView;->IMAGE_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayEditorialAppCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getImageTypePreference()[I
    .locals 1

    sget-object v0, Lcom/google/android/finsky/layout/play/PlayEditorialAppCardView;->IMAGE_TYPES:[I

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 v0, 0x3efa0000

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayEditorialAppCardView;->mThumbnailAspectRatio:F

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/play/PlayEditorialAppCardView;->measureThumbnailSpanningWidth(I)V

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->onMeasure(II)V

    return-void
.end method
