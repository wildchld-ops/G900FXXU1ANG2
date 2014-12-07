.class public Lcom/google/android/finsky/services/DismissRecommendationService;
.super Landroid/app/IntentService;
.source "DismissRecommendationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/google/android/finsky/services/DismissRecommendationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getDismissPendingIntent(Landroid/content/Context;ILcom/google/android/finsky/api/model/Document;II)Landroid/app/PendingIntent;
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # I
    .param p4    # I

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasNeutralDismissal()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getNeutralDismissal()Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    move-result-object v3

    iget-object v1, v3, Lcom/google/android/finsky/protos/DocumentV2$Dismissal;->url:Ljava/lang/String;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "dismiss"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/google/android/finsky/services/DismissRecommendationService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "documentId"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dismissalUrl"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "backendId"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17
    .param p1    # Landroid/content/Intent;

    const-string v12, "appWidgetId"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v12, "documentId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "dismissalUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "backendId"

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v10

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    if-nez v3, :cond_0

    const-class v12, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v1, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x1

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v10}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendations(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->remove(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->writeToDisk(Landroid/content/Context;)V

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v1, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->notifyDataSetChanged(Landroid/content/Context;[I)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    if-eqz v7, :cond_1

    const-string v12, "Invalidating cached recs for %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->deleteCachedRecommendations(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    const-string v12, "Dismissing id=[%s], url=[%s]"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v8

    invoke-interface {v3, v4, v8, v8}, Lcom/google/android/finsky/api/DfeApi;->rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/volley/toolbox/RequestFuture;->setRequest(Lcom/android/volley/Request;)V

    :try_start_1
    sget-object v12, Lcom/google/android/finsky/config/G;->recommendationsFetchTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v12}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13, v14}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->needsBackfill()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-static {v3, v0, v11, v10, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->performBackFill(Lcom/google/android/finsky/api/DfeApi;Landroid/content/Context;Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;I)V

    :cond_2
    const-string v12, "Dismissed %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v12, "Interrupted while dismissing"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :try_start_2
    const-string v12, "Execution exception while fetching: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    const-string v12, "Invalidating cached recs for %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->deleteCachedRecommendations(Landroid/content/Context;I)V

    goto/16 :goto_1

    :catch_2
    move-exception v6

    :try_start_3
    const-string v12, "Interrupted while fetching: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_1

    const-string v12, "Invalidating cached recs for %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->deleteCachedRecommendations(Landroid/content/Context;I)V

    goto/16 :goto_1

    :catch_3
    move-exception v6

    :try_start_4
    const-string v12, "Timed out while fetching: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_1

    const-string v12, "Invalidating cached recs for %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->deleteCachedRecommendations(Landroid/content/Context;I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v12

    if-eqz v7, :cond_3

    const-string v13, "Invalidating cached recs for %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v3, v13, v14}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->deleteCachedRecommendations(Landroid/content/Context;I)V

    :cond_3
    throw v12

    :catch_4
    move-exception v6

    const-string v12, "Exception while dismissing: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_5
    move-exception v6

    const-string v12, "Timed out while dismissing"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
