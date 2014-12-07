.class Lcom/google/android/finsky/layout/LegacyActionBar$8;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;->wishlistButtonClicked(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$8;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWishlistStatusChanged(Ljava/lang/String;ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$8;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$8;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # invokes: Lcom/google/android/finsky/layout/LegacyActionBar;->syncWishlistStatus(Z)V
    invoke-static {v1, p2}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$800(Lcom/google/android/finsky/layout/LegacyActionBar;Z)V

    :cond_0
    return-void
.end method
