.class Lcom/android/launcher2/Launcher$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$withDrag:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher2/Launcher$6;->val$withDrag:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher$6;->val$withDrag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageManager;->isCurCP()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->setDarkenViewIfneed(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->finishExitAllApps()V
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)V

    :cond_1
    return-void
.end method
