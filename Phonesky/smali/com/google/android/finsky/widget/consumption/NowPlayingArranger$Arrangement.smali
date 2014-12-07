.class public Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;
.super Ljava/lang/Object;
.source "NowPlayingArranger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arrangement"
.end annotation


# static fields
.field private static final LOCATION_FLAGS_2_HORIZONTAL:[B

.field private static final LOCATION_FLAGS_2_VERTICAL:[B

.field private static final LOCATION_FLAGS_3_STRETCH_FIRST:[B

.field private static final LOCATION_FLAGS_3_STRETCH_SECOND:[B

.field private static final LOCATION_FLAGS_4:[B


# instance fields
.field public layoutVariant:I

.field public final quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_VERTICAL:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_HORIZONTAL:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_FIRST:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_SECOND:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_4:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x6t
        0xat
    .end array-data

    :array_3
    .array-data 1
        0x5t
        0x2t
        0x9t
    .end array-data

    :array_4
    .array-data 1
        0x5t
        0x6t
        0x9t
        0xat
    .end array-data
.end method

.method public constructor <init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    iput p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    return-void
.end method

.method public static getLocation(III)B
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, v2, :cond_2

    if-nez p2, :cond_2

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_HORIZONTAL:[B

    aget-byte v0, v0, p1

    goto :goto_0

    :cond_2
    if-ne p0, v2, :cond_3

    if-ne p2, v1, :cond_3

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_VERTICAL:[B

    aget-byte v0, v0, p1

    goto :goto_0

    :cond_3
    if-ne p0, v3, :cond_4

    if-nez p2, :cond_4

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_FIRST:[B

    aget-byte v0, v0, p1

    goto :goto_0

    :cond_4
    if-ne p0, v3, :cond_5

    if-ne p2, v1, :cond_5

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_SECOND:[B

    aget-byte v0, v0, p1

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_4:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method
