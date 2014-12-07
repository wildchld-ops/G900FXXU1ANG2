.class final Lcom/google/android/finsky/widget/WidgetUtils$1;
.super Ljava/lang/Object;
.source "WidgetUtils.java"

# interfaces
.implements Lcom/google/android/finsky/library/LibraryReplicators$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/WidgetUtils;->registerLibraryMutationsListener(Landroid/content/Context;Lcom/google/android/finsky/library/LibraryReplicators;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMutationsApplied(Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/library/AccountLibrary;
    .param p2    # Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/widget/WidgetUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/finsky/library/AccountLibrary;->getBackendFromLibraryId(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgets(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/widget/WidgetUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->notifyDataSetChanged(Landroid/content/Context;[I)V

    :cond_0
    return-void
.end method
