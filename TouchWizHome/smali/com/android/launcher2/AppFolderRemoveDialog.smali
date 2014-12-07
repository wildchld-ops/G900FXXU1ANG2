.class public Lcom/android/launcher2/AppFolderRemoveDialog;
.super Landroid/app/DialogFragment;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AppFolderRemoveDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V
    .locals 6
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # Lcom/android/launcher2/CellLayout;
    .param p3    # I

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    new-instance v3, Lcom/android/launcher2/AppFolderRemoveDialog$1;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/android/launcher2/AppFolderRemoveDialog$1;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog;Lcom/android/launcher2/AnimationLayer;Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/CellLayout;)V

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private cancelDelete()V
    .locals 6

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v4}, Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    goto :goto_0
.end method

.method static createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0    # Lcom/android/launcher2/AppFolderItem;
    .param p1    # Landroid/app/FragmentManager;

    invoke-static {p1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;-><init>()V

    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0    # Landroid/app/FragmentTransaction;
    .param p1    # Landroid/app/FragmentManager;

    const-string v1, "AppFolderRemoveDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0    # Landroid/app/FragmentManager;

    const-string v0, "AppFolderRemoveDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v10, -0x1

    if-ne p2, v10, :cond_3

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v5

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v7

    sget-object v10, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v10, v7, :cond_1

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    iget-wide v10, v10, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher2/PagedView;->getPageIndexForItemId(J)I

    move-result v9

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v10

    if-eq v10, v9, :cond_0

    invoke-virtual {v6, v9}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    iget v10, v6, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    add-int/lit8 v2, v10, 0xa

    :cond_0
    invoke-virtual {v6, v9}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V

    goto :goto_1

    :cond_1
    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-eqz v10, :cond_2

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getAppsEndPage()I

    move-result v9

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDelete()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
