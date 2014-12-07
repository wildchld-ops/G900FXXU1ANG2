.class public Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;
.super Ljava/lang/Object;
.source "PlayCardClusterMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClusterTileMetadata"
.end annotation


# instance fields
.field private final mCardMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field private final mXStart:I

.field private final mYStart:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->mCardMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    iput p2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->mXStart:I

    iput p3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->mYStart:I

    return-void
.end method


# virtual methods
.method public getCardMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->mCardMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    return-object v0
.end method

.method public getXStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->mXStart:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->mYStart:I

    return v0
.end method
