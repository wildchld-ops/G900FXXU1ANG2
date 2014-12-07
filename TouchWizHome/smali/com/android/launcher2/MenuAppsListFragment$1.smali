.class Lcom/android/launcher2/MenuAppsListFragment$1;
.super Ljava/lang/Object;
.source "MenuAppsListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsListFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v5, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsListFragment$1;->this$0:Lcom/android/launcher2/MenuAppsListFragment;

    # getter for: Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsListFragment;->access$000(Lcom/android/launcher2/MenuAppsListFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v5, 0x1

    return v5
.end method
