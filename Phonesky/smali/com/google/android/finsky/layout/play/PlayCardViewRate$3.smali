.class Lcom/google/android/finsky/layout/play/PlayCardViewRate$3;
.super Ljava/lang/Object;
.source "PlayCardViewRate.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardViewRate;->clearRating()V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate$3;->this$0:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate$3;->this$0:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setState(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
