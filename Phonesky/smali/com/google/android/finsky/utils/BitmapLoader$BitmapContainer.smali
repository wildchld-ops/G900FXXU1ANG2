.class public Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

.field private mCacheKey:Ljava/lang/String;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V
    .locals 0
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mRequestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    return-object v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->removeHandlerAndCancelIfNecessary(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$600(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->removeHandlerAndCancelIfNecessary(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Z

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->handlers:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$700(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$600(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
