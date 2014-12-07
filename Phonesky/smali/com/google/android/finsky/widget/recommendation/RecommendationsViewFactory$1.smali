.class Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;
.super Ljava/lang/Object;
.source "RecommendationsViewFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->getWidgetBackend()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

.field final synthetic val$backend:[I

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;[ILjava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

    iput-object p2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->val$backend:[I

    iput-object p3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

    # getter for: Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mTypeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    invoke-static {v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->access$100(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    iget-object v3, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->this$0:Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;

    # getter for: Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->mAppWidgetId:I
    invoke-static {v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;->access$000(Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->val$backend:[I

    const/4 v2, -0x1

    aput v2, v1, v4

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewFactory$1;->val$backend:[I

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    goto :goto_0
.end method
