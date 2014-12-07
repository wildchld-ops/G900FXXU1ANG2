.class Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryMusicViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->setupItemDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x75

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    iget-object v3, v3, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    # invokes: Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->goToArtistPage()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V

    return-void
.end method
