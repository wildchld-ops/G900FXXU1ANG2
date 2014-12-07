.class Lcom/google/android/finsky/layout/play/PlayCardViewRate$2;
.super Ljava/lang/Object;
.source "PlayCardViewRate.java"

# interfaces
.implements Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardViewRate;->onRatingChanged(Landroid/widget/RatingBar;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardViewRate;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRateReviewCommitted(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    int-to-float v1, p1

    const/4 v2, 0x1

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setRating(FZ)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->access$000(Lcom/google/android/finsky/layout/play/PlayCardViewRate;FZ)V

    return-void
.end method

.method public onRateReviewFailed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->clearRating()V

    return-void
.end method
