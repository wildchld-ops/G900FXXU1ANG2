.class final Lcom/google/android/finsky/utils/PlayUtils$1;
.super Ljava/lang/Object;
.source "PlayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayUtils;->removeClusterFromStream(Lcom/google/android/finsky/layout/play/PlayCardClusterView;Lcom/google/android/finsky/adapters/OnCollapsedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cluster:Lcom/google/android/finsky/layout/play/PlayCardClusterView;

.field final synthetic val$onCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardClusterView;Lcom/google/android/finsky/adapters/OnCollapsedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayUtils$1;->val$cluster:Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PlayUtils$1;->val$onCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/utils/PlayUtils$1;->val$cluster:Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/android/finsky/utils/PlayUtils$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/utils/PlayUtils$1$1;-><init>(Lcom/google/android/finsky/utils/PlayUtils$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/PlayUtils$1;->val$cluster:Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
