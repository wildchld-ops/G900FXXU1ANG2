.class public Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$OnShortcutBoxCancelListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLFrontCameraAdapter;,
        Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;
    }
.end annotation


# static fields
.field public static final EDITABLE_AREA_POS_X:I

.field public static final EDITABLE_AREA_POS_Y:I

.field private static final HELP_POPUP_HEIGHT:I

.field private static final HELP_POPUP_PADDING:I

.field private static final HELP_POPUP_POS_X:I

.field private static final HELP_POPUP_POS_Y:I

.field private static final HELP_POPUP_ROW_HEIGHT:I

.field private static final HELP_POPUP_TEXT_COLOR:I

.field private static final HELP_POPUP_TEXT_HEIGHT:I

.field private static HELP_POPUP_TEXT_SIZE:I = 0x0

.field private static final HELP_POPUP_TEXT_SIZE_SWA:I

.field private static final HELP_POPUP_TEXT_WIDTH:I

.field private static final HELP_POPUP_TIMEOUT:I = 0x1388

.field private static final HELP_POPUP_WIDTH:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field public static final LIST_LINE_THICKNESS:I

.field public static final LIST_SCROLL_PADDING:I

.field private static final MENU_BACKGROUND_POS_X:I

.field private static final MENU_BACKGROUND_POS_Y:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_LEFT_PADDING:I

.field private static final MENU_LINE_LIST_LINE_THICKNESS:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_WIDTH:I

.field public static final SIDEBAR_BOUNDARY_LINE:I

.field private static final TAG:Ljava/lang/String; = "TwGLSettingsMenu"


# instance fields
.field private mCols:I

.field private mEditableSideBarAreaBg:Lcom/sec/android/glview/TwGLImage;

.field private mEditableSideBarAreaBlueBg:Lcom/sec/android/glview/TwGLImage;

.field private mFrontCameraList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mFrontSettingList:Lcom/sec/android/glview/TwGLList;

.field mHelpPadding:Landroid/graphics/Rect;

.field private mHelpPopupHeight:I

.field private mHelpPopupWidth:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideHelpPopup:Ljava/lang/Runnable;

.field private mIsHelpPopupByTimeOut:Z

.field private mIsLocatedInSideBar:Z

.field private mRearCameraList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mRearSettingList:Lcom/sec/android/glview/TwGLList;

.field private mSelectedMenuId:I

.field private mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSettingMenuBackground:Lcom/sec/android/glview/TwGLImage;

.field private mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSideBarBackground:Lcom/sec/android/glview/TwGLImage;

.field private mSideBarItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f090194

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    const v0, 0x7f090195

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    const v0, 0x7f090191

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    const v0, 0x7f090192

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    const v0, 0x7f090193

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LEFT_PADDING:I

    const v0, 0x7f090198

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_BACKGROUND_POS_X:I

    const v0, 0x7f090199

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_BACKGROUND_POS_Y:I

    const v0, 0x7f09019a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LINE_LIST_LINE_THICKNESS:I

    const v0, 0x7f090196

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    const v0, 0x7f090197

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I

    const v0, 0x7f0902f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SIDEBAR_BOUNDARY_LINE:I

    const v0, 0x7f09019b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    const v0, 0x7f09019c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_SCROLL_PADDING:I

    const v0, 0x7f09019d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_POS_X:I

    const v0, 0x7f09019e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_POS_Y:I

    const v0, 0x7f09019f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_WIDTH:I

    const v0, 0x7f0901a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_HEIGHT:I

    const v0, 0x7f0901a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_SIZE:I

    const v0, 0x7f0901a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_SIZE_SWA:I

    const v0, 0x7f0901a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_WIDTH:I

    const v0, 0x7f0901a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_HEIGHT:I

    const v0, 0x7f080006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_COLOR:I

    const v0, 0x7f0901a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_ROW_HEIGHT:I

    const v0, 0x7f0901a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_PADDING:I

    const v0, 0x7f090178

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->EDITABLE_AREA_POS_X:I

    const v0, 0x7f090179

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->EDITABLE_AREA_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedMenuId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsHelpPopupByTimeOut:Z

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideHelpPopup:Ljava/lang/Runnable;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraList:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsLocatedInSideBar:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarItemCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->initViewList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->initSettingList()V

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBg:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBlueBg:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isLaunchSettingMenuByDragStartSideBarItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/MenuBase$OnHideListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LEFT_PADDING:I

    return v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v5

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraList:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    :goto_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedMenuId:I

    if-ne v5, v6, :cond_2

    move-object v2, v1

    :goto_3
    return-object v2

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_3
.end method

.method private initSettingList()V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x7f0200c9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_SCROLL_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarPadding(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setScrollBarAutoHide(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;

    invoke-direct {v1, p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v1, v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_SCROLL_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarPadding(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setScrollBarAutoHide(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLFrontCameraAdapter;

    invoke-direct {v1, p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLFrontCameraAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    return-void
.end method

.method private initViewList()V
    .locals 19

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LINE_LIST_LINE_THICKNESS:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    add-int/2addr v7, v8

    int-to-float v5, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_BACKGROUND_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_BACKGROUND_POS_Y:I

    int-to-float v4, v4

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LINE_LIST_LINE_THICKNESS:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v5, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v6, v7

    const/4 v7, 0x1

    const v8, 0x7f02024c

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuBackground:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingMenuBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const v8, 0x7f02024b

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarBackground:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->EDITABLE_AREA_POS_X:I

    int-to-float v4, v4

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->EDITABLE_AREA_POS_Y:I

    int-to-float v7, v7

    const v8, 0x7f020249

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBg:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->EDITABLE_AREA_POS_X:I

    int-to-float v4, v4

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->EDITABLE_AREA_POS_Y:I

    int-to-float v7, v7

    const v8, 0x7f02024a

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBlueBg:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBlueBg:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LINE_LIST_LINE_THICKNESS:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v5, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    const/16 v17, 0x1

    :goto_0
    const/4 v2, 0x4

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LEFT_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    mul-int v4, v4, v17

    add-int/2addr v3, v4

    add-int/lit8 v4, v17, -0x1

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    mul-int/2addr v4, v7

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    int-to-float v5, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v6, v7

    const/4 v7, 0x0

    const v8, 0x7f02024e

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    invoke-virtual {v9, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v8, 0x3

    invoke-static {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v6

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v4, v4

    const/4 v7, 0x3

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v8, 0x3

    invoke-static {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v6

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v4, v4

    const/4 v7, 0x3

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraList:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_2
    new-instance v7, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_POS_X:I

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_POS_Y:I

    int-to-float v10, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_SIZE_SWA:I

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_SIZE:I

    :cond_3
    const v2, 0x7f0b0287

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v7, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_HEIGHT:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_SIZE:I

    int-to-float v14, v2

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_COLOR:I

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_SIZE:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v13, v3, v4}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupWidth:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_ROW_HEIGHT:I

    mul-int v4, v4, v18

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_TEXT_WIDTH:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupWidth:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_ROW_HEIGHT:I

    mul-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupHeight:I

    new-instance v7, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_ROW_HEIGHT:I

    mul-int v2, v2, v18

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->HELP_POPUP_PADDING:I

    add-int/2addr v2, v3

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "TwGLSettingsMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public hideHelpPopup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getshowEditableShortcutGuideDialog()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->showHelpPopup()V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForEditQuickSettings()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuForEditQuickSettings()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCancelDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    return-void
.end method

.method public onDragEndItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->removeSideBarEmptyItem()V

    return-void
.end method

.method public onDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4

    const/4 v3, 0x4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SIDEBAR_BOUNDARY_LINE:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsLocatedInSideBar:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarItemCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->addSideBarItem(FF)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsLocatedInSideBar:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsLocatedInSideBar:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsLocatedInSideBar:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarItemCount:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->removeSideBarEmptyItem()V

    goto :goto_0
.end method

.method public onDragStartItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsLocatedInSideBar:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getNumberOfEditableSideBarItem()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarItemCount:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarItemCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_BACKGROUND_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_BACKGROUND_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->addSideBarItem(FF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSideBarItemCount:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    const-string v0, "TwGLSettingsMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPopupWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHelpPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method public onShortcutBoxCancelListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->removeSideBarEmptyItem()V

    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "TwGLSettingsMenu"

    const-string v2, "onShow"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsHelpPopupByTimeOut:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedMenuId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedMenuId:I

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->requestLastViewFocus()V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mFrontSettingList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    goto :goto_1
.end method

.method public requestLastViewFocus()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->findLastSelectedView()Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setEditableSideBarAreaVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBg:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBg:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setEditableSideBarBlueAreaVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBlueBg:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mEditableSideBarAreaBlueBg:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedMenuId:I

    return-void
.end method

.method public showHelpPopup()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsHelpPopupByTimeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSettingHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideHelpPopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideHelpPopup:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mIsHelpPopupByTimeOut:Z

    :cond_0
    return-void
.end method
