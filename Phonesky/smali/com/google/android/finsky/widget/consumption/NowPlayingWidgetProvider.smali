.class public Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;
.super Lcom/google/android/finsky/widget/BaseWidgetProvider;
.source "NowPlayingWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;,
        Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;,
        Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_OVERLAY_IDS:[I

.field private static final BACKENDS:[I

.field private static final CONTAINERS:[I

.field private static final IMAGE_IDS:[I

.field private static final PORTRAIT_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

.field private static final PORTRAIT_LARGE_REPLACEMENT:Lcom/google/android/finsky/widget/consumption/Block;

.field private static final SQUARE_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

.field public static mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

.field private static final sRandom:Ljava/util/Random;

.field private static sSupportedBackendIds:[I


# instance fields
.field private final mRowStartCounts:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const v7, 0x7f0b00d1

    const/4 v6, 0x4

    const v5, 0x7f0b00d2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->sRandom:Ljava/util/Random;

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->sSupportedBackendIds:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->IMAGE_IDS:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->ACCESSIBILITY_OVERLAY_IDS:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->BACKENDS:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->CONTAINERS:[I

    new-instance v0, Lcom/google/android/finsky/widget/consumption/Block;

    const v1, 0x7f0400ae

    invoke-direct {v0, v1}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v1, 0x7f0b00c9

    const v2, 0x7f0b00ca

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v0

    const v1, 0x7f0b00cb

    const v2, 0x7f0b00cc

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_LARGE_REPLACEMENT:Lcom/google/android/finsky/widget/consumption/Block;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/widget/consumption/Block;

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400ab

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b00c9

    const v3, 0x7f0b00ca

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_LARGE_REPLACEMENT:Lcom/google/android/finsky/widget/consumption/Block;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->replaceLastOccurenceInRowWith(Lcom/google/android/finsky/widget/consumption/Block;)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b3

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b00cb

    const v4, 0x7f0b00ca

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const v3, 0x7f0b00cb

    const v4, 0x7f0b00cc

    invoke-virtual {v2, v8, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400b4

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b00cd

    const v3, 0x7f0b00ca

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    const/4 v2, 0x3

    const v3, 0x7f0b00cd

    const v4, 0x7f0b00ce

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400ac

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b00cb

    const v4, 0x7f0b00cc

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400ad

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b00cd

    const v3, 0x7f0b00ce

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/finsky/widget/consumption/Block;

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400b1

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b00cf

    const v3, 0x7f0b00cf

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400af

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b00d0

    const v4, 0x7f0b00d0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400b5

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b00cf

    invoke-virtual {v1, v7, v2}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1, v8, v7, v7}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b0

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    invoke-virtual {v2, v7, v7}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/finsky/widget/consumption/Block;

    const v2, 0x7f0400b7

    invoke-direct {v1, v2}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v2, 0x7f0b00cf

    invoke-virtual {v1, v5, v2}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    invoke-virtual {v1, v6, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b8

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b00d0

    invoke-virtual {v2, v5, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b6

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    invoke-virtual {v2, v5, v7}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v8, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b9

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b00d0

    const v4, 0x7f0b00cf

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const v3, 0x7f0b00d0

    const v4, 0x7f0b00cf

    invoke-virtual {v2, v9, v3, v4}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v8, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400ba

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    const v3, 0x7f0b00d0

    invoke-virtual {v2, v7, v3}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;->hosting(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v9, v7, v7}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v8, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->withChild(III)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/finsky/widget/consumption/Block;->limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/android/finsky/widget/consumption/Block;

    const v3, 0x7f0400b2

    invoke-direct {v2, v3}, Lcom/google/android/finsky/widget/consumption/Block;-><init>(I)V

    invoke-virtual {v2, v5, v5}, Lcom/google/android/finsky/widget/consumption/Block;->sized(II)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->SQUARE_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x1
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x7f080197
        0x7f08019b
        0x7f080199
        0x7f08019d
    .end array-data

    :array_2
    .array-data 4
        0x7f080198
        0x7f08019c
        0x7f08019a
        0x7f08019e
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x4
        0x2
        0x6
    .end array-data

    :array_4
    .array-data 4
        0x7f0801a7
        0x7f0801a9
        0x7f0801a8
        0x7f0801aa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    return-void
.end method

.method protected static varargs fetchConsumptionDataIfNecessary(Landroid/content/Context;[I)V
    .locals 12
    .param p0    # Landroid/content/Context;
    .param p1    # [I

    const/4 v11, 0x0

    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v3

    array-length v0, p1

    new-array v2, v0, [I

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v7, v6

    :goto_0
    if-ge v5, v0, :cond_2

    aget v1, p1, v5

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->hasConsumptionAppData(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->isLoadingData(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    sget-boolean v8, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "Data for [%s] is available or loading, skipping"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->startLoading(I)V

    add-int/lit8 v6, v7, 0x1

    aput v1, v2, v7

    goto :goto_1

    :cond_2
    if-lez v7, :cond_3

    new-array v4, v7, [I

    invoke-static {v2, v11, v4, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v4}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->scheduleAlarmForUpdate(Landroid/content/Context;[I)V

    :cond_3
    return-void

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method private generateAccountNeededState(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const v5, 0x7f0801a1

    const v4, 0x7f0801a0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400aa

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-static {p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v1
.end method

.method private generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Z

    const/4 v5, 0x0

    const/16 v4, 0x8

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400bb

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f0801a5

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0801a4

    invoke-static {v5}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getHeaderIconRes(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-static {v5}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getEmptyBackgroundRes(I)I

    move-result v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    const v2, 0x7f08019f

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_0
    const v2, 0x7f0801a1

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v2, 0x7f0801a0

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f080021

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0801ab

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0801a2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v1
.end method

.method private generateConfigurationState(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const v5, 0x7f0801a0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400bc

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0801a1

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    const-class v3, Lcom/google/android/finsky/widget/consumption/NowPlayingTrampoline;

    invoke-static {p1, v3, p2}, Lcom/google/android/finsky/widget/TrampolineActivity;->getPendingLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v2
.end method

.method private generateDisabledState(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v8

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0400bc

    invoke-direct {v1, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {p3}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v9, 0x7f0902d9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    const v9, 0x7f080054

    invoke-virtual {v1, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, 0x7f0801a1

    invoke-virtual {v8, v9, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-static {p1, p3}, Lcom/google/android/finsky/widget/consumption/EnableAppReceiver;->getEnableIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v9, 0x7f0801a0

    invoke-virtual {v8, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v9, 0x7f0801a0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v8

    :catch_0
    move-exception v2

    const-string v7, ""

    goto :goto_0
.end method

.method private generateUnavailableState(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    const v10, 0x7f0801a0

    const/4 v9, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v6

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0400bc

    invoke-direct {v0, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v7, 0x7f0902da

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f080054

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f0801a1

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-static {p3}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "https"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "play.google.com"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "store/apps/details"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1, v9, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v6, v10, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v6
.end method

.method private generateViewTree(IILcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;Ljava/util/Map;II)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .locals 37
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p4    # Landroid/content/Context;
    .param p6    # I
    .param p7    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBackends(I)[I

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->fetchConsumptionDataIfNecessary(Landroid/content/Context;[I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v15

    new-instance v29, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;)V

    move-object/from16 v0, v29

    # setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0, v15}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$002(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getTitleRes(Lcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v35

    const v3, 0x7f0801a5

    move-object/from16 v0, v35

    invoke-virtual {v15, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0801a4

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getHeaderIconRes(I)I

    move-result v5

    invoke-virtual {v15, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getHeaderIntent(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v23

    if-eqz v23, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    const v3, 0x7f0801a6

    move-object/from16 v0, v30

    invoke-virtual {v15, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0801a6

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0015

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getConsumptionDocLists(I)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move/from16 v0, v27

    invoke-static {v3, v0, v12, v13}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->score(Ljava/util/List;IJ)Ljava/util/List;

    move-result-object v31

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->arrange(Ljava/util/List;I)Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v0, v3

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    if-nez v3, :cond_7

    const/16 v33, 0x0

    :goto_0
    move-object v4, v15

    const/4 v3, 0x1

    move/from16 v0, v19

    if-le v0, v3, :cond_1

    invoke-static/range {v20 .. v20}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getLayout(Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;)I

    move-result v34

    const v3, 0x7f0801a1

    invoke-virtual {v15, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-direct {v0, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0801a1

    move-object/from16 v0, v22

    invoke-virtual {v15, v3, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    move-object/from16 v4, v22

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v29

    # setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$302(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    const/4 v3, 0x1

    move-object/from16 v0, v29

    # setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$402(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move/from16 v10, p6

    move/from16 v11, p7

    const v6, 0x7f0801a1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v3, v3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    move/from16 v0, v25

    invoke-static {v3, v0, v5}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->getLocation(III)B

    move-result v7

    const/4 v3, 0x1

    move/from16 v0, v19

    if-le v0, v3, :cond_3

    sget-object v3, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->CONTAINERS:[I

    aget v6, v3, v25

    div-int/lit8 v10, v10, 0x2

    const/4 v3, 0x4

    move/from16 v0, v19

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_3

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    :cond_2
    move/from16 v0, p7

    int-to-float v3, v0

    int-to-float v5, v10

    div-float/2addr v3, v5

    const v5, 0x400ccccd

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_9

    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_8

    div-int/lit8 v11, p7, 0x3

    :goto_2
    add-int v11, v11, v24

    :cond_3
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    aget-object v9, v3, v25

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->populateWidget(Landroid/widget/RemoteViews;IIILandroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;IILjava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v36

    const/4 v3, 0x4

    move/from16 v0, v19

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    :cond_4
    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->heightRemaining:I
    invoke-static/range {v36 .. v36}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$500(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)I

    move-result v24

    :cond_5
    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static/range {v36 .. v36}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$300(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    move-object/from16 v0, v29

    # |= operator for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$376(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)Z

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static/range {v36 .. v36}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$400(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    move-object/from16 v0, v29

    # &= operator for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$472(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)Z

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static/range {v36 .. v36}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, v29

    # setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$102(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    :cond_6
    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v29 .. v29}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v3

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v36 .. v36}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v33, 0x1

    goto/16 :goto_0

    :cond_8
    mul-int/lit8 v3, p7, 0x2

    div-int/lit8 v11, v3, 0x3

    goto :goto_2

    :cond_9
    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_a

    mul-int/lit8 v3, p7, 0x2

    div-int/lit8 v11, v3, 0x3

    :goto_3
    goto :goto_2

    :cond_a
    div-int/lit8 v11, p7, 0x3

    goto :goto_3

    :cond_b
    div-int/lit8 v11, p7, 0x2

    goto :goto_2

    :cond_c
    const/16 v21, 0x0

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static/range {v29 .. v29}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$300(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBackgroundRes(I)I

    move-result v21

    :cond_d
    :goto_4
    if-eqz v21, :cond_e

    const v3, 0x7f08019f

    move/from16 v0, v21

    invoke-virtual {v15, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_e
    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static/range {v29 .. v29}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$400(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez p1, :cond_12

    const v3, 0x7f0b0078

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v3

    move/from16 v0, p6

    if-lt v0, v3, :cond_12

    const/16 v32, 0x1

    :goto_5
    if-eqz v32, :cond_13

    const v3, 0x7f0801a2

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6
    if-nez p1, :cond_14

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p3

    move/from16 v16, p2

    move/from16 v17, p6

    move/from16 v18, p7

    invoke-direct/range {v12 .. v18}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateHotseat(Landroid/content/Context;Lcom/google/android/finsky/api/model/DfeToc;Landroid/widget/RemoteViews;III)V

    :goto_7
    return-object v29

    :cond_f
    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static/range {v29 .. v29}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$400(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz p1, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getEmptyBackgroundRes(I)I

    move-result v21

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    const v3, 0x7f0801a0

    move-object/from16 v0, v26

    invoke-virtual {v15, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_10
    const v3, 0x7f0801a0

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    :cond_11
    if-eqz v23, :cond_d

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    const v3, 0x7f0801a0

    move-object/from16 v0, v26

    invoke-virtual {v15, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0801a0

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    :cond_12
    const/16 v32, 0x0

    goto :goto_5

    :cond_13
    const v3, 0x7f0801a2

    const/4 v5, 0x4

    invoke-virtual {v15, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6

    :cond_14
    const v3, 0x7f0801ab

    const/16 v5, 0x8

    invoke-virtual {v15, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7
.end method

.method private generateWidgetLayout(Landroid/content/Context;IIII)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;
    .locals 25
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    const/16 v17, 0x0

    :goto_0
    if-lez p5, :cond_1

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    move/from16 v5, p4

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x1

    :goto_1
    if-lez v5, :cond_0

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    if-nez v23, :cond_2

    move/from16 v6, p5

    :goto_2
    sub-int v8, p2, v17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->findLargestBlock(Landroid/content/Context;IIIIZ)Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v10

    if-nez v10, :cond_3

    :cond_0
    if-nez v16, :cond_4

    :cond_1
    new-instance v3, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;

    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_d

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p5

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Ljava/util/List;ZI)V

    return-object v4

    :cond_2
    move/from16 v6, v23

    goto :goto_2

    :cond_3
    add-int/lit8 v16, v16, 0x1

    invoke-virtual {v10}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v3

    add-int v17, v17, v3

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v5, v3

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v18

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/widget/consumption/Block;

    invoke-virtual {v10}, Lcom/google/android/finsky/widget/consumption/Block;->hasLastOccurenceInRowReplacement()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_5
    add-int/lit8 v3, v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/finsky/widget/consumption/Block;

    const/4 v15, -0x1

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    :goto_7
    if-ltz v12, :cond_9

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_b

    move v15, v12

    :cond_9
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/widget/consumption/Block;->getLastOccurenceInRowReplacement()Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v4

    sub-int v14, v3, v4

    if-lez v14, :cond_a

    sub-int v3, p2, v17

    if-lt v3, v14, :cond_8

    :cond_a
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int v17, v17, v14

    goto :goto_6

    :cond_b
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int p5, p5, v23

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method private static getBackends(I)[I
    .locals 2
    .param p0    # I

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->BACKENDS:[I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    goto :goto_0
.end method

.method private static getBackgroundRes(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f020012

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020014

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020015

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isNewsstandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020016

    goto :goto_0

    :cond_0
    const v0, 0x7f020013

    goto :goto_0

    :pswitch_5
    const v0, 0x7f020017

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getBlocks(I)[Lcom/google/android/finsky/widget/consumption/Block;
    .locals 2
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid backend"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->PORTRAIT_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    :goto_0
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->SQUARE_BLOCKS:[Lcom/google/android/finsky/widget/consumption/Block;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getCachedImage(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # I
    .param p4    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/net/Uri;",
            "II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-static {p0, p3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, p4}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    invoke-virtual {v3, p2, v2, v1}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->satisfies(Landroid/net/Uri;II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getConsumptionData(I)Ljava/util/List;
    .locals 1
    .param p0    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getConsumptionAppData(I)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getDocsWithImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getConsumptionDocLists(I)Ljava/util/List;
    .locals 7
    .param p0    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBackends(I)[I

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, v1, v3

    invoke-static {v5}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getConsumptionData(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v6, v5, v2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->NEWEST_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getDocsWithImages(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "filtering out docId=[%s] because uri was null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getDocId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static getEmptyBackgroundRes(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f02000a

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020010

    goto :goto_0

    :pswitch_3
    const v0, 0x7f02000c

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isNewsstandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02000d

    goto :goto_0

    :cond_0
    const v0, 0x7f02000b

    goto :goto_0

    :pswitch_5
    const v0, 0x7f02000e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getFallbackTitleRes(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0902d1

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0902d2

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0902d3

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0902d4

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isNewsstandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0902d6

    goto :goto_0

    :cond_0
    const v0, 0x7f0902d5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getHeaderIconRes(I)I
    .locals 2
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid backend"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const v0, 0x7f0200ce

    :goto_0
    return v0

    :pswitch_2
    const v0, 0x7f0200d1

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0200d2

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isNewsstandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200d3

    goto :goto_0

    :cond_0
    const v0, 0x7f0200d0

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0200d4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getHeaderIntent(Landroid/content/Context;II)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/google/android/finsky/widget/consumption/MyLibraryTrampoline;

    invoke-static {p0, v0, p2}, Lcom/google/android/finsky/widget/TrampolineActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;
    .locals 2
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getBitmapCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;-><init>(Landroid/content/Context;Lcom/android/volley/Cache;)V

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    :cond_0
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mImageLoader:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    return-object v0
.end method

.method private static getLayout(Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;)I
    .locals 3
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0400c5

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    if-nez v0, :cond_0

    const v0, 0x7f0400c3

    goto :goto_0

    :cond_0
    const v0, 0x7f0400c4

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0400bf

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getTitleRes(Lcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p1    # Landroid/content/Context;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->libraryName:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f0902d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0902d7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getFallbackTitleRes(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isConsumptionAppDisabled(Landroid/content/Context;I)Z
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private mergePortAndLandRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    move-object v4, p2

    move-object v8, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    move-object v4, p1

    move-object v8, p2

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    const/4 v0, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    iget-object v9, v3, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    iget-object v10, v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v7, v3}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->merge(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    iget-object v9, v6, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    iget-object v10, v7, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_5

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return-object v5
.end method

.method private populateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;IIILjava/util/List;Ljava/util/List;Ljava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .locals 33
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    new-instance v27, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->sort(Ljava/util/List;Landroid/content/res/Resources;)V

    const/16 v22, 0x0

    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    new-instance v24, Landroid/widget/RemoteViews;

    const v30, 0x7f0400bd

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    const/4 v7, 0x0

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v7, v0, :cond_7

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/widget/consumption/Block;

    new-instance v16, Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Lcom/google/android/finsky/widget/consumption/Block;->getLayoutId()I

    move-result v30

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object v30, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->IMAGE_IDS:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    invoke-virtual {v6}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_6

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7, v12}, Lcom/google/android/finsky/widget/consumption/NowPlayingCellSorter;->getSortedIndex(III)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-lt v10, v0, :cond_1

    :cond_0
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p7

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    if-eqz p8, :cond_4

    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageWidthRes(I)I

    move-result v31

    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v32

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getCachedImage(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v30, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->IMAGE_IDS:[I

    aget v30, v30, v12

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-nez v8, :cond_2

    const/16 v25, 0x1

    :cond_2
    :goto_4
    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageWidthRes(I)I

    move-result v30

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    invoke-virtual {v6, v12}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v30

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    new-instance v30, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;-><init>(Landroid/net/Uri;II)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/android/finsky/widget/consumption/Block;->supportsMetadata()Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getReason()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_5

    if-nez v26, :cond_5

    const v30, 0x7f0801b4

    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getReason()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v30, 0x7f0801b4

    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v26, 0x1

    :cond_3
    :goto_5
    invoke-virtual {v9}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getViewIntent()Landroid/content/Intent;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v12, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    sget-object v30, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->ACCESSIBILITY_OVERLAY_IDS:[I

    aget v30, v30, v12

    move-object/from16 v0, v16

    move/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_3

    :cond_4
    const/16 v25, 0x1

    goto/16 :goto_4

    :cond_5
    const v30, 0x7f0801b4

    const/16 v31, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5

    :cond_6
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_7
    and-int/lit8 v30, p5, 0x1

    if-eqz v30, :cond_a

    const/4 v14, 0x1

    :goto_6
    and-int/lit8 v30, p5, 0x2

    if-eqz v30, :cond_b

    const/4 v15, 0x1

    :goto_7
    const/16 v21, 0x1

    if-eqz v14, :cond_c

    const/16 v21, 0x5

    :cond_8
    :goto_8
    rem-int/lit8 v30, v22, 0x2

    if-nez v30, :cond_d

    or-int/lit8 v21, v21, 0x50

    :goto_9
    const v30, 0x7f0801a3

    const-string v31, "setGravity"

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz v14, :cond_9

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_9
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/RemoteViews;

    const v30, 0x7f0801a3

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_a

    :cond_a
    const/4 v14, 0x0

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    goto :goto_7

    :cond_c
    if-eqz v15, :cond_8

    const/16 v21, 0x3

    goto :goto_8

    :cond_d
    or-int/lit8 v21, v21, 0x30

    goto :goto_9

    :cond_e
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance v31, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    const/16 v32, 0x0

    if-nez v25, :cond_10

    const/16 v30, 0x1

    :goto_b
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move/from16 v3, v30

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/widget/RemoteViews;ZLjava/util/List;)V

    return-object v31

    :cond_10
    const/16 v30, 0x0

    goto :goto_b
.end method

.method private updateHotseat(Landroid/content/Context;Lcom/google/android/finsky/api/model/DfeToc;Landroid/widget/RemoteViews;III)V
    .locals 23
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p3    # Landroid/widget/RemoteViews;
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const v19, 0x7f0801ab

    const/16 v20, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v19, 0x7f0b0077

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, p6

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    const v19, 0x7f0b0078

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, p5

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->loadDataFromDisk(I)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;

    move-result-object v18

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mHasDismissedHotseat:Z
    invoke-static/range {v18 .. v18}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->access$600(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "Hiding hotseat because the user had dismissed it for %d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const v19, 0x7f0b007a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v19

    div-int v5, p5, v19

    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    :goto_1
    sget-object v19, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->sSupportedBackendIds:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_9

    sget-object v19, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->sSupportedBackendIds:[I

    aget v4, v19, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v9

    if-nez v9, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v6, v6, 0x1

    new-instance v16, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0400c1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v19, 0x7f0801b2

    invoke-static {v4}, Lcom/google/android/finsky/widget/WidgetUtils;->getHotseatCheckIcon(I)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v19, 0x7f0801b3

    iget-object v0, v9, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v19, 0x7f0801b3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getConsumptionAppDataSize(I)I

    move-result v14

    if-lez v14, :cond_6

    const/16 v19, 0x1

    :goto_3
    or-int v12, v12, v19

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->hasConsumptionAppData(I)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-static {v4}, Lcom/google/android/finsky/widget/WidgetUtils;->getAwarenessThreshold(I)I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    const v19, 0x7f0801b2

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_4
    new-instance v11, Landroid/content/Intent;

    const-class v19, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v19, "NowPlayingWidgetProvider.WarmWelcome"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "appWidgetId"

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v19, "backendId"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v19, 0x7f0801b0

    sget-object v20, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->sRandom:Ljava/util/Random;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextInt()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    const v19, 0x7f0801b1

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_5
    if-gt v6, v5, :cond_3

    const v19, 0x7f0801af

    move-object/from16 v0, p3

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_2

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->isBackendChecked(I)Z

    move-result v19

    if-eqz v19, :cond_8

    add-int/lit8 v7, v7, 0x1

    const v19, 0x7f0801b2

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    :cond_8
    const v19, 0x7f0801b2

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    :cond_9
    if-gtz v8, :cond_a

    if-lez v7, :cond_b

    if-eqz v12, :cond_b

    :cond_a
    const/16 v17, 0x1

    :goto_5
    if-eqz v17, :cond_c

    const v19, 0x7f0801ac

    const v20, 0x7f090348

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, p3

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v19, 0x7f0801ad

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v19, 0x7f0801ae

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v11, Landroid/content/Intent;

    const-class v19, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v19, "NowPlayingWidgetProvider.DoneButton"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "appWidgetId"

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v19, 0x7f0801ae

    sget-object v20, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->sRandom:Ljava/util/Random;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextInt()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, p3

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_6
    const v19, 0x7f0801ab

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_c
    const v19, 0x7f0801ac

    const v20, 0x7f090348

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, p3

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v19, 0x7f0801ad

    const/16 v20, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v19, 0x7f0801ae

    const/16 v20, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6
.end method


# virtual methods
.method protected findLargestBlock(Landroid/content/Context;IIIIZ)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBlocks(I)[Lcom/google/android/finsky/widget/consumption/Block;

    move-result-object v1

    array-length v6, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v2, v1, v4

    iget-object v9, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->hashCode()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eqz p6, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->hasMaxRowStartCount()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->getMaxRowStartCount()I

    move-result v9

    if-lt v3, v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v10

    if-le v9, v10, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v10

    if-lt v9, v10, :cond_4

    const/4 v8, 0x1

    :cond_2
    :goto_3
    if-eqz v7, :cond_0

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getHeight(Landroid/content/Context;)I

    move-result v9

    if-gt v9, p3, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/widget/consumption/Block;->getWidth(Landroid/content/Context;)I

    move-result v9

    if-gt v9, p2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v9

    move/from16 v0, p5

    if-lt v0, v9, :cond_0

    move-object v5, v2

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    if-eqz p6, :cond_6

    iget-object v9, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/google/android/finsky/widget/consumption/Block;->hashCode()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iget-object v9, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/google/android/finsky/widget/consumption/Block;->hashCode()I

    move-result v10

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6
    return-object v5
.end method

.method protected getWidgetClassId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # I
    .param p4    # Landroid/os/Bundle;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # [I

    move-object v1, p2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    const-string v4, "Deleting widget data for widget ID=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->libraryWidgetData:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/finsky/utils/IntentUtils;->getBackendId(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_0

    const/16 v7, 0x9

    if-eq v2, v7, :cond_0

    invoke-static {v2}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-class v7, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-virtual {v5, v7, v4}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    :cond_2
    const-string v7, "NowPlayingWidgetProvider.DoneButton"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "appWidgetId"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_3

    const-string v7, "Received ACTION_DONE_BUTTON, updating widget %d."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->writeHotseatDismissed(I)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    new-array v8, v11, [I

    aput v0, v8, v10

    invoke-virtual {p0, p1, v7, v8}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    :cond_3
    const-string v7, "Received ACTION_DONE_BUTTON, but no appWidgetId was specified."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v7, "NowPlayingWidgetProvider.WarmWelcome"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "appWidgetId"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v7, "backendId"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v9, :cond_0

    if-eq v2, v9, :cond_0

    const-string v7, "Received ACTION_LAUNCH_WARM_WELCOME for backend %d and widget %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->writeBackendChecked(II)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v2, v8}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/FinskyApp;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    new-array v8, v11, [I

    aput v0, v8, v10

    invoke-virtual {p0, p1, v7, v8}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_0
.end method

.method protected populateWidget(Landroid/widget/RemoteViews;IIILandroid/content/Context;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;IILjava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;
    .locals 11
    .param p1    # Landroid/widget/RemoteViews;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Landroid/content/Context;
    .param p6    # Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .param p7    # I
    .param p8    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "III",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mRowStartCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    new-instance v7, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v0, p8

    invoke-direct {v7, p0, v1, v2, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Ljava/util/List;ZI)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v4

    move-object v1, p0

    move-object/from16 v2, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateWidgetLayout(Landroid/content/Context;IIII)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->populateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;IIILjava/util/List;Ljava/util/List;Ljava/util/Map;)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v10

    iget-boolean v1, v7, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->showBackground:Z

    # setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showBackground:Z
    invoke-static {v10, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$302(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->isEmpty()Z

    move-result v1

    # setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->showEmptyBackground:Z
    invoke-static {v10, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$402(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;Z)Z

    iget v1, v7, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->heightRemaining:I

    # setter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->heightRemaining:I
    invoke-static {v10, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$502(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;I)I

    return-object v10
.end method

.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V
    .locals 30
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p4    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;[I)V"
        }
    .end annotation

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v27

    const v2, 0x7f0b00c1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v26

    move-object/from16 v18, p4

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget v4, v18, v21

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateAccountNeededState(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateConfigurationState(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_3
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateUnavailableState(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->isConsumptionAppDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateDisabledState(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getBoundingBoxes(Landroid/content/Context;I)[I

    move-result-object v20

    const/4 v2, 0x0

    aget v2, v20, v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    aget v2, v20, v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    aget v2, v20, v2

    if-nez v2, :cond_7

    const/4 v2, 0x3

    aget v2, v20, v2

    if-nez v2, :cond_7

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->warmImageCache(Landroid/content/Context;I)V

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateBaseTree(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    aget v16, v20, v2

    const/4 v2, 0x1

    aget v2, v20, v2

    sub-int v9, v2, v26

    const/4 v2, 0x2

    aget v8, v20, v2

    const/4 v2, 0x3

    aget v2, v20, v2

    sub-int v17, v2, v26

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateViewTree(IILcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;Ljava/util/Map;II)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v23

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v17}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateViewTree(IILcom/google/android/finsky/api/model/DfeToc;Landroid/content/Context;Ljava/util/Map;II)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;

    move-result-object v25

    new-instance v29, Landroid/widget/RemoteViews;

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static/range {v23 .. v23}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$000(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Landroid/widget/RemoteViews;

    move-result-object v2

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static/range {v25 .. v25}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$000(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Landroid/widget/RemoteViews;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v6}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static/range {v23 .. v23}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v2

    if-eqz v2, :cond_8

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mLoadedSuccessfully:Z
    invoke-static/range {v25 .. v25}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v25 .. v25}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->mUris:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;->access$200(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$ViewTreeWrapper;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->mergePortAndLandRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    move-result-object v2

    new-instance v6, Lcom/google/android/finsky/widget/consumption/ImageBatch;

    new-instance v7, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$1;-><init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;I)V

    move-object/from16 v0, v22

    invoke-direct {v6, v3, v0, v7}, Lcom/google/android/finsky/widget/consumption/ImageBatch;-><init>(ILjava/util/List;Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;)V

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->enqueue(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_1
.end method

.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # [I

    invoke-static {p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->getCachedBitmaps()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Ljava/util/Map;[I)V

    return-void
.end method

.method public warmImageCache(Landroid/content/Context;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v8, 0x0

    invoke-static {p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getConsumptionDocLists(I)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_0

    new-instance v6, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {v5}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v6, v5, v8, v8}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;-><init>(Landroid/net/Uri;II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    sget-boolean v5, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "Warming cache for %s with %d images"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->getImageLoader(Landroid/content/Context;)Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/widget/consumption/ImageBatch;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v4, v7}, Lcom/google/android/finsky/widget/consumption/ImageBatch;-><init>(ILjava/util/List;Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;)V

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->enqueue(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V

    :cond_3
    return-void
.end method
