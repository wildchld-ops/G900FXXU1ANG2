.class Lcom/google/android/finsky/utils/BitmapLoader$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/google/android/finsky/utils/BitmapLoader;->access$600(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$700(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->responseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$400(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Landroid/graphics/Bitmap;

    move-result-object v6

    # setter for: Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->access$802(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    invoke-static {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->access$900(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/google/android/finsky/utils/BitmapLoader;->access$600(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, p0, Lcom/google/android/finsky/utils/BitmapLoader$2;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v7, 0x0

    # setter for: Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/BitmapLoader;->access$1002(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
