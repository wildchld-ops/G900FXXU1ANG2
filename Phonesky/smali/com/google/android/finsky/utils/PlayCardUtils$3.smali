.class final Lcom/google/android/finsky/utils/PlayCardUtils$3;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->initializeCardTrackers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardAttachedToWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 1
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;

    # getter for: Lcom/google/android/finsky/utils/PlayCardUtils;->sWindowAttachedCards:Ljava/util/List;
    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardUtils;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCardDetachedFromWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 1
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;

    # getter for: Lcom/google/android/finsky/utils/PlayCardUtils;->sWindowAttachedCards:Ljava/util/List;
    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardUtils;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
