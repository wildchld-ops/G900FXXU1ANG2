.class public abstract Lcom/google/android/finsky/widget/WidgetTrampolineActivity;
.super Lcom/google/android/finsky/widget/TrampolineActivity;
.source "WidgetTrampolineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;->getWidgetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5, v0, p2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->put(Ljava/lang/Class;ILjava/lang/String;)V

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v4}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;->finish()V

    const/4 v5, 0x1

    new-array v1, v5, [I

    aput v0, v1, v7

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "appWidgetIds"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;->getWidgetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;->sendBroadcast(Landroid/content/Intent;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    const v6, 0x7f0801f4

    invoke-virtual {v5, v1, v6}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    :cond_1
    return-void
.end method

.method protected abstract getWidgetClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;"
        }
    .end annotation
.end method
