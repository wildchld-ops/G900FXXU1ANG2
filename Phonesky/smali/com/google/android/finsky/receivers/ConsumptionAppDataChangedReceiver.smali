.class public Lcom/google/android/finsky/receivers/ConsumptionAppDataChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConsumptionAppDataChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v5, "Consumption app update contained no extras."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "Play.BackendId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Consumption app did not specify backend id, ignoring!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v5, "Play.DataType"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Consumption app did not specify which list type was updated, ignoring!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v5, "Play.BackendId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "Play.DataType"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v4

    const-class v5, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v0

    array-length v5, v0

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Ignoring update because no widgets are listening to [%s]."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->isBackendSupported(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->isSupportedDataType(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-array v5, v9, [I

    aput v1, v5, v8

    invoke-static {p1, v5}, Lcom/google/android/finsky/services/LoadConsumptionDataService;->scheduleAlarmForUpdate(Landroid/content/Context;[I)V

    goto :goto_0

    :cond_5
    const-string v5, "Either backendId=[%d] or dataType=[%d] is not supported."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
