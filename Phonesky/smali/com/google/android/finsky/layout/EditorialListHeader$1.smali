.class Lcom/google/android/finsky/layout/EditorialListHeader$1;
.super Ljava/lang/Object;
.source "EditorialListHeader.java"

# interfaces
.implements Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/EditorialListHeader;->bind(ILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/EditorialListHeader;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/EditorialListHeader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/EditorialListHeader$1;->this$0:Lcom/google/android/finsky/layout/EditorialListHeader;

    iput-object p2, p0, Lcom/google/android/finsky/layout/EditorialListHeader$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlSpanClicked(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialListHeader$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->handleDeepLink(Ljava/lang/String;)V

    return-void
.end method
