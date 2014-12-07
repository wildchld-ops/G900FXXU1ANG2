.class Lcom/google/android/finsky/layout/LegacyActionBar$7;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;->syncCorpusIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LegacyActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$7;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$7;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$7;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$700(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/LegacyActionBar$7;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
