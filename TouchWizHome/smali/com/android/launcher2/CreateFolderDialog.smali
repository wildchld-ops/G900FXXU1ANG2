.class public Lcom/android/launcher2/CreateFolderDialog;
.super Landroid/app/DialogFragment;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    }
.end annotation


# static fields
.field private static final FIND_NEW_POS_KEY:Ljava/lang/String; = "FIND_NEW_POSITION"

.field private static final FOLDER_TITLE_KEY:Ljava/lang/String; = "FOLDER_TITLE"

.field private static final ITEM_DESTINATION_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_DESTINATION_CONTAINER_ID"

.field private static final ITEM_ID_KEY:Ljava/lang/String; = "ITEM_ID"

.field private static final ITEM_ORIGIN_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_ORIGIN_CONTAINER_ID"

.field private static final ORIGINAL_CONTAINER_CELL_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_CELL"

.field private static final ORIGINAL_CONTAINER_SCREEN_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_SCREEN"

.field private static final REMOVE_ITEM_KEY:Ljava/lang/String; = "REMOVE_ITEM"

.field static okButtonSelected:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "CreateFolderDialog"


# instance fields
.field private mDestinationContainerId:J

.field private mDismissDialog:Z

.field private mFindNewPosition:Z

.field private mFolderChildItem:Lcom/android/launcher2/BaseItem;

.field private mFolderTitle:Landroid/widget/EditText;

.field private mItemId:J

.field private mOriginContainerId:J

.field private mOriginalContainerCell:I

.field private mOriginalContainerScreen:I

.field private mRemoveItem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doAddMoreApps(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 10

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {v0}, Lcom/android/launcher2/CreateFolderDialog;-><init>()V

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->init(Lcom/android/launcher2/BaseItem;JJZZII)V

    const-string v1, "CreateFolderDialog"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;Z)V
    .locals 3

    const-string v1, "CreateFolderDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method private doAddMoreApps(Landroid/app/Dialog;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonFromHomeView(Z)V

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->setFolderTitletoAddButton(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCreateFolder(Landroid/app/Dialog;)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    :cond_1
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    return-void

    :cond_5
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto :goto_0

    :cond_8
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    :cond_a
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private init(Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    iput-wide p2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    :cond_0
    iput p8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iput p9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    iput-wide p4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iput-boolean p6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iput-boolean p7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "CreateFolderDialog"

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
.method public dismissAllowingStateLoss()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    :cond_1
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_4
    return-void

    :cond_5
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto :goto_0

    :cond_8
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    :cond_a
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0f0008

    invoke-direct {v2, v10, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v10, 0x7f030008

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setContentView(I)V

    move-object v9, v2

    const v10, 0x7f080031

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e00ad

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/16 v12, 0x1e

    invoke-static {v11, v12}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v10, "ITEM_ID"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-string v10, "ITEM_ORIGIN_CONTAINER_ID"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-string v10, "ITEM_DESTINATION_CONTAINER_ID"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-string v10, "REMOVE_ITEM"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    const-string v10, "FIND_NEW_POSITION"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    const-string v10, "ORIGINAL_CONTAINER_SCREEN"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    const-string v10, "ORIGINAL_CONTAINER_CELL"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    const-string v10, "FOLDER_TITLE"

    const-string v11, ""

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v12, -0x66

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    iget-wide v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v12, -0x66

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    :cond_0
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_1

    const/4 v0, 0x1

    :cond_1
    const v10, 0x7f080032

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v10, :cond_6

    const v10, 0x7f080033

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v10, 0x7f080034

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    iget-object v10, v10, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const v10, 0x7f080035

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f080036

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v10, Lcom/android/launcher2/CreateFolderDialog$1;

    invoke-direct {v10, p0, v2}, Lcom/android/launcher2/CreateFolderDialog$1;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/android/launcher2/CreateFolderDialog$2;

    invoke-direct {v10, p0, v2}, Lcom/android/launcher2/CreateFolderDialog$2;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_3
    :goto_1
    sget-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v11, "create_folder"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Lcom/android/launcher2/CreateFolderDialog$3;

    invoke-direct {v10, p0}, Lcom/android/launcher2/CreateFolderDialog$3;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_4
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    new-instance v11, Lcom/android/launcher2/CreateFolderDialog$4;

    invoke-direct {v11, p0, v2}, Lcom/android/launcher2/CreateFolderDialog$4;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v10, Lcom/android/launcher2/CreateFolderDialog$5;

    invoke-direct {v10, p0}, Lcom/android/launcher2/CreateFolderDialog$5;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_5
    return-object v2

    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ITEM_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ITEM_ORIGIN_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ITEM_DESTINATION_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "REMOVE_ITEM"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FIND_NEW_POSITION"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FOLDER_TITLE"

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ORIGINAL_CONTAINER_SCREEN"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ORIGINAL_CONTAINER_CELL"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method
