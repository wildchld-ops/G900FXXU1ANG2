.class public Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;
.super Ljava/lang/Object;
.source "PlayCardClusterMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardMetadata"
.end annotation


# instance fields
.field private final mHSpan:I

.field private final mLayoutId:I

.field private final mThumbnailAspectRatio:F

.field private final mVSpan:I


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mLayoutId:I

    iput p2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mHSpan:I

    iput p3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mVSpan:I

    iput p4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mThumbnailAspectRatio:F

    return-void
.end method


# virtual methods
.method public getHSpan()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mHSpan:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mLayoutId:I

    return v0
.end method

.method public getThumbnailAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mThumbnailAspectRatio:F

    return v0
.end method

.method public getVSpan()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->mVSpan:I

    return v0
.end method
