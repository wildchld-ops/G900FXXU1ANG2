.class public Lcom/android/launcher2/CellLayoutMenu;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutMenu"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mNumItemsPushedIn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    return-void
.end method

.method private fillFromPageRightSnake()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContainerType()J
    .locals 2

    const-wide/16 v0, -0x66

    return-wide v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    return-void
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->hide(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method public isReOrderingEnabled()Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/CellLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 19
    .param p1    # Landroid/view/DragEvent;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/DragState;

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/DragState;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_3

    const/4 v15, 0x1

    :goto_1
    if-nez v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v3, v14, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_5

    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_5

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/launcher2/AppItem;

    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-eqz v3, :cond_4

    iget-object v3, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getFolderPage()I

    move-result v3

    if-lt v4, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getContainerType()J

    move-result-wide v5

    const-wide/16 v7, -0x66

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_2

    :cond_4
    iget-object v3, v13, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_5

    invoke-virtual {v13}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    const/4 v3, -0x1

    iput v3, v13, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v3, -0x1

    iput v3, v13, Lcom/android/launcher2/AppItem;->mCell:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    if-eqz v17, :cond_2

    new-instance v3, Lcom/android/launcher2/CellLayoutMenu$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v3, v0, v1, v2, v13}, Lcom/android/launcher2/CellLayoutMenu$1;-><init>(Lcom/android/launcher2/CellLayoutMenu;Lcom/android/launcher2/MenuView;Landroid/view/ViewParent;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {v14, v3}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0075

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->disableRollNavigation()V

    :cond_6
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->onEnd()V

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_3
    :pswitch_3
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->disableRollNavigation()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    :pswitch_6
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/CellLayoutMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x6457

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .param p1    # Landroid/view/DragEvent;
    .param p2    # Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    rem-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    div-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    return-void
.end method

.method pushItemsToNextPage()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    mul-int v1, v3, v4

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "item in < was null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method realTimeReorder()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelAllFolderAnimations()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->fillFromPageRightSnake()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->clampCurrentPage()V

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method snake(Lcom/android/launcher2/AppItem;)V
    .locals 10
    .param p1    # Lcom/android/launcher2/AppItem;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCellIgnoreHidden()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v2, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    :cond_0
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getFolderPage()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_0
    add-int/lit8 v6, v4, 0x1

    if-lt v1, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->pushItemsToNextPage()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedView;->setFolderPage(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    :cond_4
    if-eqz p1, :cond_5

    iget v6, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    iput v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->realTimeReorder()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v6

    invoke-virtual {p0, p1, v9, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_5
    return-void
.end method

.method undoSnake(Z)Lcom/android/launcher2/AppItem;
    .locals 7
    .param p1    # Z

    const/4 v1, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCellIgnoreHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v1, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelAllFolderAnimations()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v4

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method
