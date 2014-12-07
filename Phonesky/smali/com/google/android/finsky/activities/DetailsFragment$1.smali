.class Lcom/google/android/finsky/activities/DetailsFragment$1;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field summaryStrip:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;

.field final synthetic val$detailsContent:Lcom/google/android/finsky/layout/DetailsContentLayout;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/layout/DetailsContentLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$detailsContent:Lcom/google/android/finsky/layout/DetailsContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method findSummaryStrup()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->summaryStrip:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$detailsContent:Lcom/google/android/finsky/layout/DetailsContentLayout;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->summaryStrip:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onScroll(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment$1;->findSummaryStrup()V

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->summaryStrip:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->val$detailsContent:Lcom/google/android/finsky/layout/DetailsContentLayout;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getSummaryStripTop()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment$1;->summaryStrip:Landroid/view/View;

    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    return-void
.end method
