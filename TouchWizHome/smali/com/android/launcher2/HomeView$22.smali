.class Lcom/android/launcher2/HomeView$22;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$immediate:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeView$22;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$22;->val$immediate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$22;->val$immediate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1200(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$22;->val$immediate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1200(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$22;->val$immediate:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$22;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
