.class final Lcom/google/android/finsky/utils/WishlistHelper$2;
.super Ljava/lang/Object;
.source "WishlistHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$docTitle:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$wasInWishlist:Z


# direct methods
.method constructor <init>(ZLandroid/content/res/Resources;Ljava/lang/String;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$wasInWishlist:Z

    iput-object p2, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$docTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

    iput-object p5, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$wasInWishlist:Z

    if-eqz v2, :cond_1

    const v0, 0x7f0902ed

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$res:Landroid/content/res/Resources;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$docTitle:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-boolean v2, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$wasInWishlist:Z

    if-eqz v2, :cond_2

    const-string v2, "Unable to remove from wishlist: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

    iget-object v3, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$docId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/finsky/utils/WishlistHelper$2;->val$wasInWishlist:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;->onWishlistStatusChanged(Ljava/lang/String;ZZ)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0902ec

    goto :goto_0

    :cond_2
    const-string v2, "Unable to add to wishlist: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
