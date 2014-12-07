.class Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;
.super Landroid/view/animation/TranslateAnimation;
.source "PlayCardRateClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->startSlideTransition(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

.field final synthetic val$cardCount:I

.field final synthetic val$cardIndex:I

.field final synthetic val$cardOriginalLeftPositions:[I

.field final synthetic val$fullSlideDistance:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;FFFFIII[I)V
    .locals 0
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iput p6, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$fullSlideDistance:I

    iput p7, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$cardIndex:I

    iput p8, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$cardCount:I

    iput-object p9, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$cardOriginalLeftPositions:[I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1    # F
    .param p2    # Landroid/view/animation/Transformation;

    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$fullSlideDistance:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v4, v6

    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$cardIndex:I

    add-int/lit8 v3, v6, 0x1

    :goto_0
    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$cardCount:I

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->getLeft()I

    move-result v1

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;->val$cardOriginalLeftPositions:[I

    aget v6, v6, v3

    sub-int v2, v6, v4

    sub-int v5, v2, v1

    invoke-virtual {v0, v5}, Lcom/google/android/play/layout/PlayCardViewBase;->offsetLeftAndRight(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
