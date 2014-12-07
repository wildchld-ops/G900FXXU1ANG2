.class Lcom/google/android/finsky/utils/PlayCardUtils$8$1;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/PlayCardUtils$8;

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$eventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field final synthetic val$finalWishlistClickEventType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PlayCardUtils$8;Lcom/google/android/finsky/analytics/FinskyEventLog;ILcom/google/android/finsky/api/DfeApi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$8;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->val$eventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    iput p3, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->val$finalWishlistClickEventType:I

    iput-object p4, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionSelected()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->val$eventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    iget v1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->val$finalWishlistClickEventType:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$8;

    iget-object v3, v3, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$clickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$8;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$8$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$8;

    iget-object v2, v2, Lcom/google/android/finsky/utils/PlayCardUtils$8;->val$wishlistStatusListener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    return-void
.end method
