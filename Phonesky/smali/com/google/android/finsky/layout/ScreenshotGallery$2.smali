.class Lcom/google/android/finsky/layout/ScreenshotGallery$2;
.super Ljava/lang/Object;
.source "ScreenshotGallery.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

.field final synthetic val$hasDimension:Z

.field final synthetic val$index:I

.field final synthetic val$numImagesToLoad:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ScreenshotGallery;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    iput p2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->val$index:I

    iput p3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->val$numImagesToLoad:I

    iput-boolean p4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->val$hasDimension:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$100(Lcom/google/android/finsky/layout/ScreenshotGallery;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->val$index:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$000(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/adapters/ImageStripAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # ++operator for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mNumImagesFailed:I
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$204(Lcom/google/android/finsky/layout/ScreenshotGallery;)I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->val$numImagesToLoad:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$300(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$300(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->isDataMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$300(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    :cond_3
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v2, v5

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$400(Lcom/google/android/finsky/layout/ScreenshotGallery;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$000(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/adapters/ImageStripAdapter;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->val$index:I

    invoke-virtual {v2, v3, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->val$hasDimension:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$500(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/HorizontalStrip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/ScreenshotGallery$2;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
