.class public Lcom/google/android/finsky/layout/DecoratedTextView;
.super Lcom/google/android/play/layout/PlayTextView;
.source "DecoratedTextView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/play/layout/PlayTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1, p2, p0, p3, p3}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setDecorationBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setDecorationBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DecoratedTextView;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
