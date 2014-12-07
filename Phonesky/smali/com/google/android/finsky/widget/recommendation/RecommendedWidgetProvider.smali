.class public Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;
.super Lcom/google/android/finsky/widget/BaseWidgetProvider;
.source "RecommendedWidgetProvider.java"


# static fields
.field private static final VIEW_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->VIEW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801b9
        0x7f0801f4
        0x7f0801a0
        0x7f0801f6
        0x7f0801f5
        0x7f0801f8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;-><init>()V

    return-void
.end method

.method private static varargs getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # [I

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f04010f

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v5, 0x7f0801a4

    const v6, 0x7f0200d6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v5, 0x7f0801a5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->VIEW_IDS:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private static getRecommendationsBrowseUrl(I)Ljava/lang/String;
    .locals 4
    .param p0    # I

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-nez p0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getWidgetWithTitle(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .locals 14
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x7f0801f4

    aput v12, v10, v11

    invoke-static {p0, v10}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v9

    const v10, 0x7f0801f4

    const v11, 0x7f0801f5

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBoundingBoxes(Landroid/content/Context;I)[I

    move-result-object v2

    const v10, 0x7f0b00c1

    invoke-static {p0, v10}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v7

    const/4 v10, 0x1

    aget v10, v2, v10

    sub-int v4, v10, v7

    const/4 v10, 0x3

    aget v10, v2, v10

    sub-int v6, v10, v7

    new-instance v3, Landroid/content/Intent;

    const-class v10, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewService;

    invoke-direct {v3, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://market/factory/for/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v10, "appWidgetId"

    move/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "RecWidget.heightLandscape"

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "RecWidget.heightPortrait"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v10, 0x7f0801f4

    invoke-virtual {v9, v10, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const v10, 0x7f0801a5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static/range {p3 .. p3}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getRecommendationsBrowseUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    move/from16 v0, p3

    invoke-static {p0, v1, p1, v0, v10}, Lcom/google/android/finsky/utils/IntentUtils;->createBrowseIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v10, 0x7f0801a6

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v10, 0x7f0801a6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const-string v10, "No browse URL found for backend=%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static showAccountsNeeded(Landroid/content/Context;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # I

    invoke-static {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f09014c

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V

    return-void
.end method

.method private static showConfigurationNeeded(Landroid/content/Context;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const-class v1, Lcom/google/android/finsky/widget/recommendation/RecommendedTrampoline;

    invoke-static {p0, v1, p1}, Lcom/google/android/finsky/widget/TrampolineActivity;->getPendingLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0902d8

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static showData(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-static {p0, p2, p1, p3}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getWidgetWithTitle(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static showError(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f0801b9

    aput v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f080054

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private static showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/app/PendingIntent;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0801f7

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0801a0

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801f6
        0x7f0801a0
    .end array-data
.end method


# virtual methods
.method protected getWidgetClassId()I
    .locals 1

    const/4 v0, 0x2

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const v0, 0x7f0801f4

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    return-void
.end method

.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # [I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    move-object v1, p3

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget v0, v1, v4

    if-nez v3, :cond_0

    invoke-static {p1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showAccountsNeeded(Landroid/content/Context;I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v8

    const-class v9, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-virtual {v8, v9, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {p1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showConfigurationNeeded(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x7f0801f8

    aput v10, v8, v9

    invoke-static {p1, v8}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {p2, v0, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    invoke-static {p1, v0, v2}, Lcom/google/android/finsky/services/LoadRecommendationsService;->load(Landroid/content/Context;II)V

    goto :goto_1

    :cond_2
    return-void
.end method
