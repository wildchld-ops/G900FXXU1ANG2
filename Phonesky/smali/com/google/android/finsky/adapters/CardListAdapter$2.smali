.class Lcom/google/android/finsky/adapters/CardListAdapter$2;
.super Ljava/lang/Object;
.source "CardListAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CardListAdapter;->getBannerHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CardListAdapter;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/CardListAdapter$2;->this$0:Lcom/google/android/finsky/adapters/CardListAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CardListAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter$2;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
