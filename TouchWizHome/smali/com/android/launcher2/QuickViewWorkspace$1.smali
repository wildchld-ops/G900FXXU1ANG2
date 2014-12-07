.class Lcom/android/launcher2/QuickViewWorkspace$1;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/lang/Number;

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    if-eq v6, v9, :cond_1

    const v9, 0x7f0e0077

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v9, v9, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v9, v0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v9, v10, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v9, v10, :cond_2

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v9, v3, Landroid/widget/CompoundButton;

    if-eqz v9, :cond_2

    check-cast v3, Landroid/widget/CompoundButton;

    if-ne v5, v6, :cond_3

    move v9, v10

    :goto_2
    invoke-virtual {v3, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v9, v11

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    iget-object v9, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
