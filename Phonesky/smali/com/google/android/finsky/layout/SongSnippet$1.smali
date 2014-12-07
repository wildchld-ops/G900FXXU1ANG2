.class Lcom/google/android/finsky/layout/SongSnippet$1;
.super Ljava/lang/Object;
.source "SongSnippet.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SongSnippet;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongSnippet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    # getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
