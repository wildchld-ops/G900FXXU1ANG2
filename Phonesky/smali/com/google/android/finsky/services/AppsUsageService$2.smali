.class Lcom/google/android/finsky/services/AppsUsageService$2;
.super Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;
.source "AppsUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/AppsUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/AppsUsageService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/AppsUsageService;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/services/AppsUsageService$2;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;-><init>(Lcom/google/android/finsky/services/AppsUsageService;Lcom/google/android/finsky/services/AppsUsageService$1;)V

    return-void
.end method


# virtual methods
.method public getDocuments(II)Ljava/util/List;
    .locals 31
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/services/AppsUsageService$2;->getData()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v11

    array-length v0, v11

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v24

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v27

    move-object v5, v11

    array-length v0, v5

    move/from16 v22, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    aget-object v18, v5, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    new-instance v23, Ljava/util/concurrent/Semaphore;

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v28

    new-instance v29, Lcom/google/android/finsky/services/AppsUsageService$2$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/services/AppsUsageService$2$1;-><init>(Lcom/google/android/finsky/services/AppsUsageService$2;Ljava/util/List;Ljava/util/concurrent/Semaphore;)V

    new-instance v30, Lcom/google/android/finsky/services/AppsUsageService$2$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/services/AppsUsageService$2$2;-><init>(Lcom/google/android/finsky/services/AppsUsageService$2;Ljava/util/concurrent/Semaphore;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v12, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;

    iget-object v0, v14, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    new-instance v13, Lcom/google/android/finsky/api/model/Document;

    iget-object v0, v14, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/PkgUsageStats;

    const-wide/16 v19, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v19

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    goto :goto_2

    :cond_2
    new-instance v28, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;-><init>(Lcom/android/internal/os/PkgUsageStats;JLcom/google/android/finsky/api/model/Document;)V

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    # getter for: Lcom/google/android/finsky/services/AppsUsageService;->COMPARATOR:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/finsky/services/AppsUsageService;->access$100()Ljava/util/Comparator;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;

    iget-object v13, v9, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->document:Lcom/google/android/finsky/api/model/Document;

    iget-object v0, v9, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->stats:Lcom/android/internal/os/PkgUsageStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v28

    if-eqz v28, :cond_4

    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v28, "game"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/services/AppsUsageService$2;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/services/AppsUsageService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/services/AppsUsageService$2;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    move-object/from16 v28, v0

    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    :cond_5
    const-string v28, "Play.ViewIntent"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v28, "Play.LastUpdateTimeMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_6

    const-string v29, "Play.ImageUri"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/finsky/protos/Doc$Image;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    return-object v24
.end method
