.class Lcom/google/android/finsky/utils/PlayUtils$1$1;
.super Ljava/lang/Object;
.source "PlayUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/PlayUtils$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PlayUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayUtils$1$1;->this$0:Lcom/google/android/finsky/utils/PlayUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayUtils$1$1;->this$0:Lcom/google/android/finsky/utils/PlayUtils$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PlayUtils$1;->val$onCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayUtils$1$1;->this$0:Lcom/google/android/finsky/utils/PlayUtils$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PlayUtils$1;->val$onCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    invoke-interface {v0}, Lcom/google/android/finsky/adapters/OnCollapsedListener;->onCollapsed()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
