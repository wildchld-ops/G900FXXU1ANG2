.class Lcom/google/android/finsky/utils/BitmapLoader$1;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    iput p2, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$maxWidth:I

    iput p3, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$maxHeight:I

    iput-object p4, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$requestUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/volley/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    # getter for: Lcom/google/android/finsky/utils/BitmapLoader;->mTentativeGcRunner:Lcom/google/android/finsky/utils/TentativeGcRunner;
    invoke-static {v0}, Lcom/google/android/finsky/utils/BitmapLoader;->access$100(Lcom/google/android/finsky/utils/BitmapLoader;)Lcom/google/android/finsky/utils/TentativeGcRunner;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$maxWidth:I

    iget v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$maxHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/TentativeGcRunner;->onAllocatingSoon(I)V

    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$requestUrl:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/utils/BitmapLoader$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/utils/BitmapLoader$1$1;-><init>(Lcom/google/android/finsky/utils/BitmapLoader$1;)V

    iget v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$maxWidth:I

    iget v4, p0, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$maxHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v6, Lcom/google/android/finsky/utils/BitmapLoader$1$2;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/utils/BitmapLoader$1$2;-><init>(Lcom/google/android/finsky/utils/BitmapLoader$1;)V

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method
