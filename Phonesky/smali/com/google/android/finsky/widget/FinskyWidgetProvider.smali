.class public abstract Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.super Lcom/google/android/finsky/widget/BaseWidgetProvider;
.source "FinskyWidgetProvider.java"


# static fields
.field private static final DOCUMENT_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->DOCUMENT_TYPES:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "apps"

    sget-object v2, Lcom/google/android/finsky/config/G;->appsWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "books"

    sget-object v2, Lcom/google/android/finsky/config/G;->booksWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "movies"

    sget-object v2, Lcom/google/android/finsky/config/G;->moviesWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    const-string v1, "music"

    sget-object v2, Lcom/google/android/finsky/config/G;->musicWidgetUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/FinskyWidgetProvider;
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/widget/FinskyWidgetProvider;
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/widget/WidgetTypeMap;
    .param p4    # Lcom/google/android/finsky/widget/WidgetModel;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    return-void
.end method

.method private buildView(Landroid/content/Context;Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040144

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0801a5

    iget-object v2, p2, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0801fd

    iget-object v2, p2, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->developer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0801fb

    iget-object v2, p2, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private buildViewIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/app/PendingIntent;
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/model/Document;

    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private clearList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/widget/WidgetTypeMap;
    .param p4    # Lcom/google/android/finsky/widget/WidgetModel;

    invoke-virtual {p4}, Lcom/google/android/finsky/widget/WidgetModel;->reset()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    return-void
.end method

.method private getBackend(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/google/android/finsky/widget/WidgetTypeMap;
    .param p2    # I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDfeUrl(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/google/android/finsky/widget/WidgetTypeMap;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mUrls:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected static getLaunchMarketIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getValidDocumentTypes(Lcom/google/android/finsky/widget/WidgetTypeMap;I)[I
    .locals 2
    .param p1    # Lcom/google/android/finsky/widget/WidgetTypeMap;
    .param p2    # I

    sget-object v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->DOCUMENT_TYPES:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getBackend(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/widget/WidgetTypeMap;
    .param p4    # Lcom/google/android/finsky/widget/WidgetModel;

    const v6, 0x7f0801f4

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040145

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p4}, Lcom/google/android/finsky/widget/WidgetModel;->getItems()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :cond_1
    invoke-virtual {v3, v6}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v4, 0x7f080255

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p4}, Lcom/google/android/finsky/widget/WidgetModel;->getItems()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->buildView(Landroid/content/Context;Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;)Landroid/widget/RemoteViews;

    move-result-object v2

    const v4, 0x7f080253

    iget-object v5, v1, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->buildViewIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v4, 0x7f080254

    const v5, 0x7f030004

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v3, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private refreshList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/widget/WidgetTypeMap;
    .param p4    # Lcom/google/android/finsky/widget/WidgetModel;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v6

    invoke-direct {p0, p3, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getDfeUrl(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "%d has null URL"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;-><init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    invoke-virtual {p4, p1, v6, v7, v0}, Lcom/google/android/finsky/widget/WidgetModel;->refresh(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;)V

    goto :goto_0
.end method

.method private showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/RemoteViews;

    const v3, 0x7f080255

    const v2, 0x7f0801f4

    const v0, 0x7f080256

    const v1, 0x7f030004

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {p2, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v0, 0x8

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {p1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getLaunchMarketIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private showError(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # I

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040145

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showEmptyState(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # [I

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v12

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v9

    move-object/from16 v7, p3

    array-length v11, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget v6, v7, v10

    invoke-direct {p0, v12, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getBackend(Lcom/google/android/finsky/widget/WidgetTypeMap;I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v8, "apps"

    const-string v1, "Defaulting %d to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v12, v1, v6, v8}, Lcom/google/android/finsky/widget/WidgetTypeMap;->put(Ljava/lang/Class;ILjava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/google/android/finsky/widget/WidgetModel;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0, v12, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->getValidDocumentTypes(Lcom/google/android/finsky/widget/WidgetTypeMap;I)[I

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    const v4, 0x7f0b003e

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/widget/WidgetModel;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;[ILcom/google/android/finsky/widget/WidgetModel$ImageSelector;II)V

    invoke-direct {p0, p1, v6, v12, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->clearList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    if-nez v9, :cond_3

    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;I)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v6, v12, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    invoke-direct {p0, p1, v6, v12, v0}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->refreshList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    goto :goto_1
.end method
