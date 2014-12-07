.class public Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateFolderSelect"
.end annotation


# static fields
.field private static final SELECTED_FOLDER_ID:Ljava/lang/String; = "SELECTED_FOLDER_ID"

.field private static final UNSPECIFIED:J = -0x1L


# instance fields
.field private mTargetFolderId:J

.field private prevState:Lcom/android/launcher2/MenuAppsGrid$State;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-void
.end method

.method static synthetic access$5402(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    return-wide p1
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public backState()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    :cond_1
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->complete()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    goto :goto_0
.end method

.method protected complete()V
    .locals 15

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v11, v11, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mPreCheckedItem:Lcom/android/launcher2/AppItem;

    if-eq v7, v11, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    iget-object v11, v11, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11, v4}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoNewFolder(Ljava/util/List;)V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4300()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getFolderTitletoAddButton()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/MenuAppsGrid;->preCreateFolder(Ljava/lang/String;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v10, v14}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    invoke-interface {v10, v7}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$5000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v11, v12, :cond_5

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4300()Z

    move-result v11

    if-nez v11, :cond_6

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2800()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_6
    iput-boolean v14, v7, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_2

    :cond_7
    const-wide/16 v11, -0x1

    iput-wide v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4300()Z

    move-result v11

    if-nez v11, :cond_8

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2800()Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_8
    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    move-object v7, v10

    check-cast v7, Lcom/android/launcher2/AppItem;

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v11, v12, :cond_b

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    sget-object v11, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :goto_3
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$5000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v11, v12, :cond_c

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-wide v12, v7, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/PagedView;->getPageIndexForItemId(J)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_9

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v11

    if-eq v9, v11, :cond_9

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11, v9}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_9
    :goto_4
    const/high16 v2, -0x80000000

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v0, :cond_a

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v12

    move-object v11, v10

    check-cast v11, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v12, v11}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v2, v5

    :cond_a
    const/high16 v11, -0x80000000

    if-eq v11, v2, :cond_2

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v11

    if-eq v11, v2, :cond_2

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11, v2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_3

    :cond_c
    iget v11, v7, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v11, v1, :cond_9

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v7, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto :goto_4

    :cond_d
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;
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

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V
    invoke-static {v1, p1, v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .param p1    # Ljava/lang/Iterable;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v5}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    :cond_0
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4300()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v1, :cond_2

    :cond_1
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2800()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3500()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v4

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3600()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$4302(Z)Z

    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$2802(Z)Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    :cond_4
    return-void
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exitItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetFolder()Lcom/android/launcher2/FolderItem;
    .locals 5

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/FolderItem;

    :cond_0
    return-object v1
.end method

.method public onAppModelUpdated()V
    .locals 5

    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onResume()V

    return-void
.end method

.method public bridge synthetic preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/FolderItem;
    .param p2    # Lcom/android/launcher2/Folder;

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "SELECTED_FOLDER_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->restore(Landroid/os/Bundle;)Z

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->save(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "SELECTED_FOLDER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
