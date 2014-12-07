.class public Lcom/google/android/finsky/services/LoadRecommendationsService;
.super Landroid/app/IntentService;
.source "LoadRecommendationsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/google/android/finsky/services/LoadRecommendationsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static load(Landroid/content/Context;II)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/services/LoadRecommendationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://market/load/for/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "backendId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Intent;

    const/4 v7, 0x0

    const-string v5, "backendId"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "appWidgetId"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v5, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v0, v6, v7

    invoke-static {p0, v5, v6}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->update(Landroid/content/Context;Ljava/lang/Class;[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-static {p0, v2, v1, v0, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendationsOrShowError(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;IILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showData(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0
.end method
