.class public abstract Lcom/google/android/finsky/widget/BaseWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BaseWidgetProvider.java"


# instance fields
.field private final LOGGABLE_INTENT_ACTIONS:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.appwidget.action.APPWIDGET_DELETED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/finsky/widget/BaseWidgetProvider;->LOGGABLE_INTENT_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method protected static getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 10
    .param p0    # Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v9

    const-string v5, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    move-object v1, v0

    move-object v4, v0

    move-object v6, v0

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v9, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected static getBoundingBoxes(Landroid/content/Context;I)[I
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const v3, 0x7f0b00c5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x4

    new-array v1, v2, [I

    invoke-static {p0, v3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0b00c6

    invoke-static {p0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    invoke-static {p0, v3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0b00c6

    invoke-static {p0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appWidgetMinWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    const-string v2, "appWidgetMinHeight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    const-string v2, "appWidgetMaxWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v6

    const-string v2, "appWidgetMaxHeight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v7

    goto :goto_0
.end method

.method private sendAnalytics(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v11

    array-length v9, v11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v11, p0, Lcom/google/android/finsky/widget/BaseWidgetProvider;->LOGGABLE_INTENT_ACTIONS:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_0

    iget-object v11, p0, Lcom/google/android/finsky/widget/BaseWidgetProvider;->LOGGABLE_INTENT_ACTIONS:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v1, v7

    :cond_0
    new-instance v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    invoke-direct {v6}, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getWidgetClassId()I

    move-result v11

    iput v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->classId:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasClassId:Z

    iput v1, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->intentActionId:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasIntentActionId:Z

    iput v9, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->numWidgets:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasNumWidgets:Z

    const-string v11, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "appWidgetId"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getBoundingBoxes(Landroid/content/Context;I)[I

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v10

    :try_start_0
    invoke-static {v10}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasBackendId:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v11, 0x0

    aget v11, v3, v11

    iput v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minWidth:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinWidth:Z

    const/4 v11, 0x1

    aget v11, v3, v11

    iput v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minHeight:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinHeight:Z

    const/4 v11, 0x2

    aget v11, v3, v11

    iput v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxWidth:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxWidth:Z

    const/4 v11, 0x3

    aget v11, v3, v11

    iput v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxHeight:I

    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxHeight:Z

    :cond_1
    new-instance v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-direct {v5}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;-><init>()V

    const/16 v11, 0x1fb

    iput v11, v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    const/4 v11, 0x1

    iput-boolean v11, v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput-object v6, v5, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    return-void

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const/4 v11, -0x1

    iput v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasBackendId:Z

    goto :goto_1
.end method

.method public static varargs update(Landroid/content/Context;Ljava/lang/Class;[I)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p2    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;[I)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1    # Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected abstract getWidgetClassId()I
.end method

.method protected onDefaultConfiguration(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # Landroid/content/Intent;
    .param p4    # I

    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, p4, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->put(Ljava/lang/Class;ILjava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p4, v2, v3

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # [I

    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v4

    move-object v1, p2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->delete(Ljava/lang/Class;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/widget/BaseWidgetProvider;->LOGGABLE_INTENT_ACTIONS:[Ljava/lang/String;

    array-length v11, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v12, v7, v10

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->sendAnalytics(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const-string v15, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "appWidgetId"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v15, v2, v4}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->onDefaultConfiguration(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;I)V

    :cond_1
    const-string v15, "com.android.vending.action.APPWIDGET_UPDATE_CONSUMPTION_DATA"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "backendId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v14

    const-string v15, "backendId"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v8}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v9}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "all"

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v13}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_2
    :goto_1
    const-string v15, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "appWidgetId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "appWidgetId"

    const/16 v16, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v15, -0x1

    if-ne v4, v15, :cond_6

    const-string v15, "Received ACTION_APPWIDGET_UPDATE, with invalid widget ID."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v15, "No backend specified for update!"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v15, "Received ACTION_APPWIDGET_UPDATE, updating widget %d."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v4, v15, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v15}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_2

    :cond_7
    const-string v15, "appWidgetIds"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "appWidgetIds"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    const-string v15, "Received ACTION_APPWIDGET_UPDATE, updating %d widgets."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    array-length v0, v5

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_2

    :cond_8
    sget-object v15, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v15}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_2

    :cond_9
    const-string v15, "Refusing to update all widgets; need to narrow scope"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # [I

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method protected varargs abstract updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end method
