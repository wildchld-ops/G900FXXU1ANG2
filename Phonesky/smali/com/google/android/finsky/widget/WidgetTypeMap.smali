.class public Lcom/google/android/finsky/widget/WidgetTypeMap;
.super Ljava/lang/Object;
.source "WidgetTypeMap.java"


# static fields
.field private static sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;


# instance fields
.field private final mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    new-instance v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v1, "widgets"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/widget/WidgetTypeMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->forceSynchronousLoad()V

    return-void
.end method

.method private static buildKey(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/google/android/finsky/widget/WidgetTypeMap;->sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/widget/WidgetTypeMap;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/widget/WidgetTypeMap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/finsky/widget/WidgetTypeMap;->sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;

    :cond_0
    sget-object v0, Lcom/google/android/finsky/widget/WidgetTypeMap;->sInstance:Lcom/google/android/finsky/widget/WidgetTypeMap;

    return-object v0
.end method

.method private getWidgets(Ljava/lang/Class;Ljava/lang/String;Z)[I
    .locals 11
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v10}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->fetchAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v10, "type"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz p3, :cond_0

    const-string v10, "all"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1
    const-string v10, "widgetProvider"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "appWidgetId"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method


# virtual methods
.method public delete(Ljava/lang/Class;I)V
    .locals 2
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->buildKey(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 3
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->buildKey(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I
    .locals 1
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I
    .locals 1
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Class;ILjava/lang/String;)V
    .locals 5
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "data cannot be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->buildKey(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v3, "type"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appWidgetId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "widgetProvider"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/widget/WidgetTypeMap;->mKeyValueStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
