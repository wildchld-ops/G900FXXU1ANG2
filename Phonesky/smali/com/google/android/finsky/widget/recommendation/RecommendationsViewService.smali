.class public Lcom/google/android/finsky/widget/recommendation/RecommendationsViewService;
.super Landroid/widget/RemoteViewsService;
.source "RecommendationsViewService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 5
    .param p1    # Landroid/content/Intent;

    const/4 v4, 0x0

    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "RecWidget.heightLandscape"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "RecWidget.heightPortrait"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;-><init>(Landroid/content/Context;III)V

    return-object v3
.end method
