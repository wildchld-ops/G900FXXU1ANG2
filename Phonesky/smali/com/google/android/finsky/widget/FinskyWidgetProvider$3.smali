.class Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;
.super Ljava/lang/Object;
.source "FinskyWidgetProvider.java"

# interfaces
.implements Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/FinskyWidgetProvider;->refreshList(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

.field final synthetic val$widgetInfo:Lcom/google/android/finsky/widget/WidgetModel;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

    iput-object p2, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$appWidgetId:I

    iput-object p4, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    iput-object p5, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$widgetInfo:Lcom/google/android/finsky/widget/WidgetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$appWidgetId:I

    iget-object v3, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;

    iget-object v4, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$widgetInfo:Lcom/google/android/finsky/widget/WidgetModel;

    # invokes: Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidget(Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->access$100(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;ILcom/google/android/finsky/widget/WidgetTypeMap;Lcom/google/android/finsky/widget/WidgetModel;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "Failed to load list for widget! %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$3;->val$appWidgetId:I

    # invokes: Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;I)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->access$000(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;I)V

    return-void
.end method
