.class public Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;
.super Ljava/lang/Object;
.source "RecommendationsViewFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private final mAppWidgetId:I

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContentHeightLandDp:I

.field private final mContentHeightPortDp:I

.field private final mContext:Landroid/content/Context;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

.field private final mLibrary:Lcom/google/android/finsky/library/Library;

.field private final mMaxImageHeight:I

.field private final mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    iput p3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContentHeightLandDp:I

    iput p4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContentHeightPortDp:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mLibrary:Lcom/google/android/finsky/library/Library;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mMaxImageHeight:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

    iget v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)Lcom/google/android/finsky/widget/WidgetTypeMap;
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    return-object v0
.end method

.method private getChildViewAt(III)Landroid/widget/RemoteViews;
    .locals 15
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->get(I)Lcom/google/android/finsky/widget/recommendation/Recommendation;

    move-result-object v9

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mMaxImageHeight:I

    invoke-static {v1, v9, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getBitmap(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/widget/recommendation/Recommendation;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v9}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getImageType()I

    move-result v2

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getLastMeasuredWidth(I)I

    move-result v5

    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    iget v6, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContentHeightLandDp:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getBackend()I

    move-result v4

    move/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getLayoutRes(Landroid/content/Context;IIIII)I

    move-result v14

    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v9, v13, v14}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->populateItem(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;Landroid/graphics/Bitmap;I)V

    iget-object v7, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    move/from16 v10, p1

    move/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->setIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;III)V

    return-object v8

    :cond_0
    iget v6, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContentHeightPortDp:I

    goto :goto_0
.end method

.method private getLastMeasuredWidth(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "appWidgetMinWidth"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const-string v1, "appWidgetMaxWidth"

    goto :goto_0
.end method

.method private static getLayoutRes(Landroid/content/Context;IIIII)I
    .locals 9
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const v2, 0x7f04011a

    const v4, 0x7f040119

    const v1, 0x7f040115

    const v3, 0x7f04011b

    const-wide/high16 v5, 0x4004000000000000L

    int-to-double v7, p5

    mul-double/2addr v5, v7

    double-to-int v0, v5

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid backend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    if-ge p4, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :pswitch_2
    packed-switch p3, :pswitch_data_1

    :pswitch_3
    packed-switch p1, :pswitch_data_2

    move v1, v3

    goto :goto_0

    :pswitch_4
    move v1, v3

    goto :goto_0

    :pswitch_5
    move v1, v4

    goto :goto_0

    :pswitch_6
    if-lt p4, v0, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_7
    move v1, v3

    goto :goto_0

    :pswitch_8
    move v1, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getRecommendationItems(I)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    iget-object v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mLibrary:Lcom/google/android/finsky/library/Library;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendationsOrShowError(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;IILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetBackend()I
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v3, 0x1

    new-array v0, v3, [I

    new-instance v2, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;-><init>(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;[ILjava/util/concurrent/Semaphore;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_0

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    :cond_0
    aget v3, v0, v5

    return v3
.end method

.method public static varargs notifyDataSetChanged(Landroid/content/Context;[I)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # [I

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    :cond_1
    const v1, 0x7f0801f4

    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    return-void
.end method

.method private static populateItem(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/widget/RemoteViews;
    .param p2    # Lcom/google/android/finsky/widget/recommendation/Recommendation;
    .param p3    # Landroid/graphics/Bitmap;
    .param p4    # I

    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    const v2, 0x7f0801a5

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0801fd

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0801fe

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDescriptionReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0801fb

    invoke-virtual {p1, v2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v2, 0x7f0801f9

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRecommendationWidgetStripResourceId(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentReasonDescriptionResource(I)I

    move-result v0

    const v2, 0x7f080202

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDescriptionReason()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private static setIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/finsky/widget/recommendation/Recommendation;III)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/widget/RemoteViews;
    .param p2    # Lcom/google/android/finsky/widget/recommendation/Recommendation;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {p0, v3, p5, p4}, Lcom/google/android/finsky/widget/recommendation/OpenRecommendationReceiver;->getIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f080202

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0, p4}, Lcom/google/android/finsky/widget/AdvanceFlipperReceiver;->getIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x7f080203

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {p0, p4, v3, p5, p3}, Lcom/google/android/finsky/services/DismissRecommendationService;->getDismissPendingIntent(Landroid/content/Context;ILcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;

    move-result-object v1

    const v3, 0x7f0801fc

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040116

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 7
    .param p1    # I

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    new-array v4, v5, [I

    iget v5, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getRecommendationItems(I)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v2

    if-lt p1, v2, :cond_3

    const-string v2, "Item out of bounds (pos = %d, size = %d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v4}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getChildViewAt(III)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, p1, v5, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getChildViewAt(III)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v6, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getChildViewAt(III)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDataSetChanged()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getRecommendationItems(I)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mItems:Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
