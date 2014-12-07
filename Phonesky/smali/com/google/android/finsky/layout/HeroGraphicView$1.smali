.class Lcom/google/android/finsky/layout/HeroGraphicView$1;
.super Ljava/lang/Object;
.source "HeroGraphicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/HeroGraphicView;->bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/HeroGraphicView;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/HeroGraphicView;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->this$0:Lcom/google/android/finsky/layout/HeroGraphicView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/HeroGraphicView$1;->this$0:Lcom/google/android/finsky/layout/HeroGraphicView;

    # getter for: Lcom/google/android/finsky/layout/HeroGraphicView;->mImageType:I
    invoke-static {v3}, Lcom/google/android/finsky/layout/HeroGraphicView;->access$000(Lcom/google/android/finsky/layout/HeroGraphicView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    return-void
.end method
