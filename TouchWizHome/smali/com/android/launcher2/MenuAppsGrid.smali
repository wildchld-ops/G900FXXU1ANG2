.class public final Lcom/android/launcher2/MenuAppsGrid;
.super Lcom/android/launcher2/SmoothPagedView;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
.implements Lcom/android/launcher2/Folder$FolderNameChangeListener;
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;,
        Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;,
        Lcom/android/launcher2/MenuAppsGrid$StateUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;,
        Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;,
        Lcom/android/launcher2/MenuAppsGrid$StateEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateNormal;,
        Lcom/android/launcher2/MenuAppsGrid$StateObj;,
        Lcom/android/launcher2/MenuAppsGrid$State;,
        Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final DL_APPS_SAVED_INDEX_KEY:Ljava/lang/String; = "DLAppsSavedIndexKey"

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "openFolderId"

.field private static final PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "pendingFolderEditText"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "pending_folder_edit_text_selection_start"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "SuperStateKey"

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuAppsGrid"

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static mCreateFoldertoAddButton:Z

.field private static mEmptyFoldertoAddButton:Z

.field public static mExitingSelectableState:Z

.field private static mFolderTitletoAddButton:Ljava/lang/String;

.field public static mSnapping:Z

.field static final sPanelDrawer:Lcom/android/launcher2/PanelDrawer;


# instance fields
.field private mCurrentOrientation:I

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDragInProgress:Z

.field private mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

.field private final mEditModeShrinkFactor:F

.field private mEnterEditModeAnimator:Landroid/animation/Animator;

.field private mExitEditModeAnimator:Landroid/animation/Animator;

.field private mFading:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderLocation:[I

.field mIsFromHomeView:Z

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field private mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mPendingAppModelUpdated:Z

.field private mPendingFolderBundle:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

.field private mRecycledViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedOrientation:I

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

.field private mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

.field private mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

.field private mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

.field private mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v5, 0x3f800000

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mSnapping:Z

    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    const v2, 0x3f666666

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$1;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$2;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->MenuAppsGrid:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setSaveEnabled(Z)V

    const v2, 0x7f050014

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    const v2, 0x7f050015

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditModeShrinkFactor:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1    # Lcom/android/launcher2/Folder;

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridAccessibilityEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1    # Z
    .param p2    # Lcom/android/launcher2/AppIconView;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1    # Ljava/util/List;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3500()Landroid/animation/PropertyValuesHolder;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$3600()Landroid/animation/PropertyValuesHolder;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    return v0
.end method

.method static synthetic access$4302(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/AppItem;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1    # Lcom/android/launcher2/AppItem;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->isSystemSignature(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuStateAnimatorSet;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1    # Z
    .param p2    # Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0    # Lcom/android/launcher2/MenuAppsGrid;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method private addAppItem(Lcom/android/launcher2/AppItem;Z)V
    .locals 2
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageForItem(Lcom/android/launcher2/AppItem;Z)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mFolderStartScreen:I

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_1
    return-void
.end method

.method private animatePageZoomOut(Ljava/util/List;Z)V
    .locals 3
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const v0, 0x3f666666

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setPageZoom(F)V

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setPageBackgroundAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1    # Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v4

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->handleScrollOnOrientationChange()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    const v6, 0x7f0d00af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f0d00b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f0d00b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    const v6, 0x7f0b0022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    const v6, 0x7f0b0023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    const v6, 0x7f0d00b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    const v6, 0x7f0d00b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    const v6, 0x7f0d0077

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    const v6, 0x7f0d00b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0d00b4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/PagedView;->updateIndicator(II)V

    invoke-direct {p0, v2, v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->updateGridSize(III)V

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->updatePageLayout(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method private createPage()Lcom/android/launcher2/CellLayoutMenu;
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v2}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private getConstructedViews()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v7, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private getOrCreatePageForItem(Lcom/android/launcher2/AppItem;Z)Lcom/android/launcher2/CellLayoutMenu;
    .locals 5
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    move v0, v2

    :goto_0
    if-gt v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    :goto_2
    move-object v4, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    goto :goto_2
.end method

.method private isConfirmDialogOpen()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSystemSignature(Lcom/android/launcher2/AppItem;)Z
    .locals 7
    .param p1    # Lcom/android/launcher2/AppItem;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    const-string v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "openFolderId"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/android/launcher2/FolderItem;

    if-eqz v6, :cond_0

    const-string v6, "pendingFolderEditText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :cond_0
    return-void
.end method

.method private setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    .locals 1
    .param p1    # Z
    .param p2    # Lcom/android/launcher2/AppIconView;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    return-void
.end method

.method private setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    .locals 3
    .param p1    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMenuAppsGridAccessibilityEnabled(Z)V
    .locals 5
    .param p1    # Z

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/MenuView;->setAccessibilityEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateGridSize(III)V
    .locals 16
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const v14, 0x7f0f001a

    sget-object v15, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v14, 0x7f0f001a

    sget-object v15, Landroid/R$styleable;->View:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v14, 0x7f0f001b

    sget-object v15, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const v14, 0x7f0f001b

    sget-object v15, Landroid/R$styleable;->View:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v6, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v14, v5, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v14, :cond_2

    move-object v4, v5

    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p1

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v14

    if-ge v12, v14, :cond_2

    invoke-virtual {v4, v12}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v14, v10, Lcom/android/launcher2/FolderIconView;

    if-eqz v14, :cond_1

    invoke-static {v9, v10}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    move-object v14, v10

    check-cast v14, Landroid/widget/TextView;

    invoke-static {v8, v14}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    check-cast v10, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderIconView;->refresh()V

    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    instance-of v14, v10, Lcom/android/launcher2/AppIconView;

    if-eqz v14, :cond_0

    invoke-static {v3, v10}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v2, v10}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updatePageLayout(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutNoGap;->updateViewToCellLayout(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updateQuickViewMainMenu()V

    return-void
.end method


# virtual methods
.method protected allowCustomOrdering()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public appModelLoaded()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :cond_0
    return-void
.end method

.method public appModelUpdated()V
    .locals 3

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onAppModelUpdated()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    goto :goto_1
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 13
    .param p1    # Landroid/view/View;

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->showMotionDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v11}, Lcom/android/launcher2/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    move v12, v11

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_4

    move v12, v11

    goto :goto_0

    :cond_4
    iget v9, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditModeShrinkFactor:F

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_5

    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getEditModeShrinkFactor()F

    move-result v9

    :cond_5
    invoke-static {p1, v9}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v11, v12}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0067

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v11}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    move v12, v11

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->enableRollNavigation()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    const/4 v6, 0x0

    instance-of v0, v7, Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_9

    move v1, v11

    :goto_3
    iget-boolean v2, v7, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v3

    iget-object v4, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_a

    move v4, v11

    :goto_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/MenuTitleBarManager;->showEditBar(ZZZZLcom/android/launcher2/MenuStateAnimatorSet;Z)V

    goto :goto_1

    :cond_7
    iget-boolean v0, v7, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->isSystemSignature(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v6, v11

    :goto_5
    goto :goto_2

    :cond_8
    move v6, v12

    goto :goto_5

    :cond_9
    move v1, v12

    goto :goto_3

    :cond_a
    move v4, v12

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->disableRollNavigation()V

    goto/16 :goto_0
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 6
    .param p1    # Lcom/android/launcher2/Page;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p1

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getHiddenItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v5, v3, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    goto :goto_2
.end method

.method public closeFolder(ZZ)Z
    .locals 3
    .param p1    # Z
    .param p2    # Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1    # Landroid/view/DragEvent;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDrawComplete(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected endDragging()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->disableRollNavigation()V

    return-void
.end method

.method protected findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getActiveTitleBarForState()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAppsQuickViewState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->isQuickViewOpen()Z

    move-result v0

    return v0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method public getFolderTitletoAddButton()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxItemsPerScreen()I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getOpenFolderId()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    :goto_0
    return-object v3

    :cond_0
    const/4 v1, 0x0

    move v0, v2

    :goto_1
    if-gt v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    goto :goto_0
.end method

.method public getPageCacheSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->getPageCacheSize()I

    move-result v0

    goto :goto_0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p1    # Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBarHight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuTitleBarManager;->getTitleBarHeight()I

    move-result v0

    return v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1    # Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->getMenuEditBar()Lcom/android/launcher2/MenuEditBar;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->getEditTitleBar()Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuEditBar;->getBarPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    const v4, 0x7f08009b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v4, v5, :cond_2

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 8
    .param p1    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;

    const/4 v7, 0x1

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v7, v7}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_3
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    :cond_4
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v5, p1, p2}, Lcom/android/launcher2/CellLayoutMenu;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eq p2, p1, :cond_4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void
.end method

.method public hideEditBar(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/MenuTitleBarManager;->hideEditBar(Landroid/animation/Animator;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    return-void
.end method

.method protected invalidatePageData()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->invalidatePageData()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updatePageTransforms()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    :cond_0
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public isDragInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    return v0
.end method

.method public leaveCurrentState()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void
.end method

.method protected onAddItem(Lcom/android/launcher2/AppIconView;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/AppIconView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelClicksOnChildrenForCurrentPage()V

    check-cast v0, Lcom/android/launcher2/FolderItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    return-void
.end method

.method onFadeEnd()V
    .locals 4

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method onFadeStart()V
    .locals 7

    iget-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, 0x1

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_6

    :cond_4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->setupDummyPanel()V

    if-eq v3, v0, :cond_6

    if-eq v3, v4, :cond_5

    if-ne v3, v5, :cond_6

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 20
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # Ljava/lang/String;
    .param p3    # J
    .param p5    # Z
    .param p6    # Z
    .param p7    # I
    .param p8    # I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/4 v10, 0x1

    :goto_0
    if-nez v10, :cond_0

    sget-object v17, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_0
    sget-object v17, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v3, -0x1

    move v15, v3

    if-eqz p1, :cond_2

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/launcher2/AppItem;

    sget-boolean v17, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-nez v17, :cond_1

    move/from16 v15, p7

    move/from16 v3, p8

    :cond_1
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v11, Lcom/android/launcher2/AppItem;->mCell:I

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    :cond_2
    sget-boolean v17, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-nez v17, :cond_3

    if-nez p1, :cond_6

    :cond_3
    const/16 v16, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getFolderPage()I

    move-result v6

    if-gt v4, v6, :cond_4

    sget-boolean v17, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-nez v17, :cond_5

    :cond_4
    move v6, v4

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    move/from16 v3, v16

    move v15, v6

    :cond_6
    :goto_1
    iput v3, v12, Lcom/android/launcher2/AppItem;->mCell:I

    iput v15, v12, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-nez v10, :cond_7

    sget-object v17, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    iget-wide v0, v12, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getPageIndexForItemId(J)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_8
    :goto_2
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v17, Lcom/android/launcher2/MenuAppsGrid$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$5;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const-wide/16 v18, 0x1f4

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v9, v6, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    move/from16 v3, v16

    move v15, v9

    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_c

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getFolderPage()I

    move-result v9

    :goto_4
    if-ge v9, v6, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    move/from16 v3, v16

    move v15, v9

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    move v15, v6

    goto/16 :goto_1

    :cond_10
    iget v0, v12, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_8

    iget v0, v12, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_2
.end method

.method public onFolderNameChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$4;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/PagedView;->onLayout(ZIIII)V

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->resetPanelViewport()V

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "add_widgets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "addapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "create_folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1    # Landroid/os/Parcelable;

    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    const-string v2, "DLAppsSavedIndexKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->setLastPageIndex(I)V

    const-string v1, "SuperStateKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/launcher2/PagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SuperStateKey"

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "DLAppsSavedIndexKey"

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->getLastPageIndex()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public openFolder(Lcom/android/launcher2/FolderItem;Z)V
    .locals 8
    .param p1    # Lcom/android/launcher2/FolderItem;
    .param p2    # Z

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    if-eq v4, p1, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v5, v5}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iput-object p0, v4, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v7, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v7, :cond_a

    move v2, v5

    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v2, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-direct {v6, p0, v1, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    invoke-virtual {v6, v4, v3, p2}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    :cond_a
    move v2, v6

    goto :goto_1
.end method

.method public preCreateFolder(Ljava/lang/String;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 12
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;

    const/4 v11, -0x1

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v10, :cond_5

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_0

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_0
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v6

    iput-object p1, v6, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v0, -0x1

    move v8, v0

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFolderPage()I

    move-result v2

    if-gt v1, v2, :cond_1

    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-nez v10, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v9

    if-eq v9, v11, :cond_6

    move v0, v9

    move v8, v2

    :cond_3
    :goto_1
    iput v0, v6, Lcom/android/launcher2/AppItem;->mCell:I

    iput v8, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-nez v5, :cond_4

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    return-void

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v2, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v10

    if-ge v4, v10, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v9

    if-eq v9, v11, :cond_9

    move v0, v9

    move v8, v4

    :cond_7
    if-eq v0, v11, :cond_8

    if-ne v8, v11, :cond_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFolderPage()I

    move-result v4

    :goto_3
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v9

    if-eq v9, v11, :cond_a

    move v0, v9

    move v8, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    move v8, v2

    goto :goto_1
.end method

.method public releaseShadows()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/android/launcher2/AppIconView;

    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->repositionOpenFolder()V

    :cond_0
    return-void
.end method

.method public resetPanelViewport()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    :cond_0
    return-void
.end method

.method public restoreOpenFolderState(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isDataReady()Z

    move-result v3

    if-nez v3, :cond_2

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const-string v3, "openFolderId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public revertEditChanges()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRevert()V

    return-void
.end method

.method public saveEditChanges()V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->editRevertCell()V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "openFolderId"

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolderId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "pendingFolderEditText"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pending_folder_edit_text_selection_start"

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pending_folder_edit_text_selection_end"

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setCreateFolderAddButtonFromHomeView(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    return-void
.end method

.method public setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V
    .locals 13
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    const/4 v5, 0x0

    const/4 v9, 0x0

    instance-of v10, p1, Lcom/android/launcher2/AppItem;

    if-eqz v10, :cond_2

    move-object v5, p1

    check-cast v5, Lcom/android/launcher2/AppItem;

    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    iget-object v11, v5, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v11, v11, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppIconView;

    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-virtual {v10, v5, v9}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    :goto_2
    return-void

    :cond_2
    instance-of v10, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-static {v0}, Lcom/android/launcher2/AppItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-eqz v10, :cond_6

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v7

    const/4 v4, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    iget-object v10, v6, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "Launcher.MenuAppsGrid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MenuAppsGrid:setCreateFolderAddButtonState item = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_3

    goto/16 :goto_0

    :cond_6
    iget-object v10, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v5, v0

    const-string v10, "Launcher.MenuAppsGrid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MenuAppsGrid:setCreateFolderAddButtonState item = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppIconView;

    goto/16 :goto_1

    :cond_8
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_2
.end method

.method protected setDataIsReady()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->setDataIsReady()V

    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 6
    .param p1    # F
    .param p2    # I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    sget v4, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v0, v4, p2}, Lcom/android/launcher2/CellLayout;->setDummyPanelProperties(FI)V

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFolderTitletoAddButton(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    sput-object p1, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    return-void
.end method

.method public setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/MenuAppsGridFragment;

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-void
.end method

.method public setPanelViewport(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    :cond_0
    return-void
.end method

.method public setPrevFolderOnCreateFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/Folder;

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/FolderItem;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v1

    # setter for: Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->access$5402(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J

    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/MenuView;

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->setEditBarClickListener(Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$3;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 4
    .param p1    # Lcom/android/launcher2/MenuView$ViewType;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v2, p1, :cond_1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    return-void
.end method

.method public syncPages()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v7, v8, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v7, v8, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->clearLayout(Lcom/android/launcher2/Page;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    iget-boolean v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->onFadeEnd()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v8, :cond_3

    iput v9, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_6

    :cond_5
    :goto_1
    return-void

    :cond_6
    sget-boolean v7, Lcom/android/launcher2/LauncherApplication;->CSCFEATURE_LAUNCHER_ENABLEAPPSANDFOLDERSCATEGORIZATION:Z

    if-eqz v7, :cond_b

    const/4 v5, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mAppsEndScreen:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    iget-object v7, v6, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_8

    if-nez v5, :cond_8

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;Z)V

    const/4 v5, 0x1

    :cond_8
    invoke-direct {p0, v6, v9}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;Z)V

    if-nez v5, :cond_7

    iget v7, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v7, p0, Lcom/android/launcher2/PagedView;->mAppsEndScreen:I

    goto :goto_2

    :cond_9
    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->setFolderPage(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPageIfNotSnapping(I)V

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->onFadeStart()V

    goto :goto_1

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    invoke-direct {p0, v6, v9}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;Z)V

    goto :goto_3
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # F

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b001b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v8, v9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v9, 0x3f000000

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    int-to-float v11, v5

    mul-float/2addr v10, v11

    int-to-float v11, v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    int-to-float v9, v4

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    if-nez v2, :cond_3

    const/4 v9, 0x0

    cmpg-float v9, p2, v9

    if-gez v9, :cond_3

    neg-float v9, v8

    mul-float/2addr v9, p2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v10

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v7, v9

    const/4 v1, 0x1

    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    if-nez v1, :cond_2

    const/high16 v9, 0x3f800000

    sub-float/2addr v9, v6

    mul-float/2addr v9, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x40200000

    div-float/2addr v9, v10

    add-float/2addr v7, v9

    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    iget-object v9, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v0

    move-object v9, p1

    check-cast v9, Lcom/android/launcher2/CellLayout;

    iget v10, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v0, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    move-object v9, p1

    check-cast v9, Lcom/android/launcher2/CellLayout;

    sget v10, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayout;->setBackgroundBaseDarken(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v9, 0x3f800000

    const/high16 v10, 0x3f800000

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    const v11, 0x3e4ccccd

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v2, v9, :cond_4

    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-lez v9, :cond_4

    neg-float v9, v8

    mul-float/2addr v9, p2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->maxOverScroll()F

    move-result v10

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v9, v10

    int-to-float v7, v9

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    :cond_5
    const/high16 v9, 0x3f800000

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->updateQuickView()V

    :cond_0
    return-void
.end method
