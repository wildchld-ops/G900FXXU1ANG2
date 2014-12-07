.class Lcom/google/android/finsky/layout/FifeImageView$1;
.super Ljava/lang/Object;
.source "FifeImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FifeImageView;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isLoaded:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FifeImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->this$0:Lcom/google/android/finsky/layout/FifeImageView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->val$isLoaded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->this$0:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/FifeImageView$1;->val$isLoaded:Z

    # invokes: Lcom/google/android/finsky/layout/FifeImageView;->loadFromCache(Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/layout/FifeImageView;->access$000(Lcom/google/android/finsky/layout/FifeImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
