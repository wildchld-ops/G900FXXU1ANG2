.class Lcom/android/launcher2/MenuAppsGrid$StateUninstall;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUninstall"
.end annotation


# instance fields
.field launcher:Lcom/android/launcher2/Launcher;

.field private mDisableOverlay:Landroid/graphics/drawable/Drawable;

.field private mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->launcher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method private isUninstallable(Lcom/android/launcher2/AppItem;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    iget-boolean v3, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "JPN"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->saveLastStatesCurrentPage()V

    :cond_0
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v9

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v10

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v6, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v9, p1, v10, v6}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0200bd

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mDisableOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f020114

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mDisableOverlay:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v9, :cond_6

    :goto_1
    # invokes: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V
    invoke-static {v6, p1, v7}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    const v6, 0x7f080098

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e00eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v6, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v6, :cond_3

    const v6, 0x7f0800a5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0050

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v6

    if-nez v6, :cond_4

    const v6, 0x7f0800a3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v6, "all_apps_button_icon"

    invoke-virtual {v2, v6}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void

    :cond_5
    move v6, v8

    goto/16 :goto_0

    :cond_6
    move v7, v8

    goto/16 :goto_1
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->isUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->isSystemSignature(Lcom/android/launcher2/AppItem;)Z
    invoke-static {v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4700(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restoreLastStatesCurrentPage()V

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3500()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3600()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->isUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->isSystemSignature(Lcom/android/launcher2/AppItem;)Z
    invoke-static {v1, p1}, Lcom/android/launcher2/MenuAppsGrid;->access$4700(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/AppItem;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method
