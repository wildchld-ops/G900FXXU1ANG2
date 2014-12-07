.class Lcom/google/android/finsky/adapters/ImageStripAdapter$2;
.super Ljava/lang/Object;
.source "ImageStripAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/ImageStripAdapter;->getViewAt(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/ImageStripAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter$2;->this$0:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iput p2, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter$2;->this$0:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    # getter for: Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageChildTappedListener:Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->access$300(Lcom/google/android/finsky/adapters/ImageStripAdapter;)Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter$2;->this$0:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget v2, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter$2;->val$index:I

    # invokes: Lcom/google/android/finsky/adapters/ImageStripAdapter;->toImageIndex(I)I
    invoke-static {v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->access$200(Lcom/google/android/finsky/adapters/ImageStripAdapter;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter$OnImageChildViewTapListener;->onImageChildViewTap(I)V

    return-void
.end method
