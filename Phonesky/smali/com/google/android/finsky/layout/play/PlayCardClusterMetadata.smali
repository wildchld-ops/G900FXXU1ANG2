.class public Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
.super Ljava/lang/Object;
.source "PlayCardClusterMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;,
        Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;
    }
.end annotation


# static fields
.field public static final CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_LARGE_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_MINI:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_MINI_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

.field public static final CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;


# instance fields
.field private mHeight:I

.field private mLeadingGap:I

.field private mRespectChildHeight:Z

.field private mRespectChildThumbnailAspectRatio:Z

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mViewportWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const v6, 0x3fb872b0

    const/high16 v5, 0x3f800000

    const/4 v4, 0x2

    const/4 v3, 0x4

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400df

    invoke-direct {v0, v1, v4, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400ee

    invoke-direct {v0, v1, v4, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400dc

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400dd

    invoke-direct {v0, v1, v3, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400d9

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400df

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MINI_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400ee

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_SMALL_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400dc

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUM_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400dd

    invoke-direct {v0, v1, v3, v3, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_MEDIUMPLUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400da

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGEMINUS_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400d9

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_LARGE_16x9:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    const v1, 0x7f0400e2

    invoke-direct {v0, v1, v4, v7, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->CARD_PERSON:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mTiles:Ljava/util/List;

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mWidth:I

    iput p2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mHeight:I

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mViewportWidth:I

    return-void
.end method

.method public static getAspectRatio(I)F
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const v0, 0x3fb872b0

    :goto_0
    return v0

    :sswitch_0
    const/high16 v0, 0x3f000000

    goto :goto_0

    :sswitch_1
    const/high16 v0, 0x3f800000

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addTile(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mTiles:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;-><init>(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mHeight:I

    return v0
.end method

.method public getLeadingGap()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mLeadingGap:I

    return v0
.end method

.method public getTileCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTileMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;

    return-object v0
.end method

.method public getTrailingGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mViewportWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mWidth:I

    return v0
.end method

.method public setRespectChildHeight()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mRespectChildHeight:Z

    return-object p0
.end method

.method public setRespectChildThumbnailAspectRatio()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mRespectChildThumbnailAspectRatio:Z

    return-object p0
.end method

.method public shouldRespectChildHeight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mRespectChildHeight:Z

    return v0
.end method

.method public shouldRespectChildThumbnailAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mRespectChildThumbnailAspectRatio:Z

    return v0
.end method

.method public withLeadingGap(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mLeadingGap:I

    return-object p0
.end method

.method public withViewportWidth(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->mViewportWidth:I

    return-object p0
.end method
