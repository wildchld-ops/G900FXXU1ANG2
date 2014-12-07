.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final COVERMODE_CLOSE_BUTTON_POS_X:I

.field private static final COVERMODE_CLOSE_BUTTON_POS_Y:I

.field private static final COVERMODE_CLOSE_CAMERA:I = -0x1

.field private static final COVERMODE_FLASH_BUTTON_POS_X:I

.field private static final COVERMODE_FLASH_BUTTON_POS_Y:I

.field private static final COVERMODE_SHUTTER_BUTTON_POS_X:I

.field private static final COVERMODE_SHUTTER_BUTTON_POS_Y:I

.field private static final COVERMODE_THUMBNAIL_BUTTON_POS_X:I

.field private static final COVERMODE_THUMBNAIL_BUTTON_POS_Y:I

.field private static final GROUP_PLAY_BUTTON:I = 0x0

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final LIVE_BEAUTY_FACE_BUTTON_POS_X:I

.field private static final LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

.field private static final RECORDING_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final SHOOTINGMODE_BUTTON_POS_X:I

.field private static final SHOOTINGMODE_BUTTON_POS_Y:I

.field private static final SHUTTER_ANIMATION_IMAGE_POS_X:I

.field private static final SHUTTER_ANIMATION_IMAGE_POS_Y:I

.field private static final SHUTTER_BUTTON_POS_X:I

.field private static final SHUTTER_BUTTON_POS_Y:I

.field private static final SIDEBAR_HEIGHT:I

.field private static final SIDEBAR_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraBaseMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I

.field private static final THUMBNAIL_LIST_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_LIST_BUTTON_POS_X:I

.field private static final THUMBNAIL_LIST_BUTTON_POS_Y:I

.field private static final THUMBNAIL_LIST_BUTTON_WIDTH:I


# instance fields
.field private mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field public mCameraEnterKeyReleased:Z

.field private mChkBaseMenuItemsShow:Z

.field private mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mDimState:Z

.field private mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

.field public mIsThumbnailListMenuOpen:Z

.field private mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

.field private mModeTextDimImageResId:I

.field private mModeTextImageResId:I

.field private mModeTextPressImageResId:I

.field private mRecordingButton:Lcom/sec/android/glview/TwGLButton;

.field private mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

.field private mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

.field private mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

.field private mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

.field private mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f090011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    const v0, 0x7f090012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    const v0, 0x7f090016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    const v0, 0x7f090017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    const v0, 0x7f090018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_X:I

    const v0, 0x7f090019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_Y:I

    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    const v0, 0x7f09001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    const v0, 0x7f090020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    const v0, 0x7f090021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    const v0, 0x7f090022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_X:I

    const v0, 0x7f090023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_Y:I

    const v0, 0x7f090024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_WIDTH:I

    const v0, 0x7f090025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_HEIGHT:I

    const v0, 0x7f09002d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_X:I

    const v0, 0x7f09002e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

    const v0, 0x7f09031f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_X:I

    const v0, 0x7f090320

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_Y:I

    const v0, 0x7f090321

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_X:I

    const v0, 0x7f090322

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_Y:I

    const v0, 0x7f090323

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_X:I

    const v0, 0x7f090324

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_Y:I

    const v0, 0x7f090325

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_X:I

    const v0, 0x7f090326

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_Y:I

    const v0, 0x7f090176

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    const v0, 0x7f090177

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mVisibility:Z

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setCaptureEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setTouchHandled(Z)V

    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    return-void
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 11
    .param p1    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    const-string v0, "TwGLCameraBaseMenu"

    const-string v1, "mActivityContext is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020205

    const v5, 0x7f020207

    const v6, 0x7f020206

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200c4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02003f

    const v5, 0x7f020040

    const v6, 0x7f02003e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnButtonPressedListener(Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getCurrentLocaleModeText()V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->moveBaseLayoutAbsolute(FFZ)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020021

    const v5, 0x7f020023

    const v6, 0x7f020022

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02030b

    const v5, 0x7f02030b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020026

    const v5, 0x7f020028

    const v6, 0x7f020027

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v10

    const/16 v0, 0x23

    if-ne v10, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02001f

    const v5, 0x7f020020

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b011d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202d9

    const v5, 0x7f0202da

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202d7

    const v5, 0x7f0202d8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setCoverCameraMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseMenu-loading**added["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setAlpha(F)V

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x2f

    if-ne v10, v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_3

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_4

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarVisibility(I)V

    goto/16 :goto_5
.end method


# virtual methods
.method public addSideBarItem(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->addEmptyItem(FF)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public endShutterAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_0
    return-void
.end method

.method public getCameraEnterKeyState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    return v0
.end method

.method public getChkBaseMenuItemsShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mChkBaseMenuItemsShow:Z

    return v0
.end method

.method public getCurrentLocaleModeText()V
    .locals 7

    const v6, 0x7f020106

    const v5, 0x7f020105

    const v4, 0x7f0200fe

    const v3, 0x7f0200fd

    const v2, 0x7f0200fc

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020107

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0200ea

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200ec

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200eb

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0200f3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200f5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200f4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    :cond_2
    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const v1, 0x7f0200ed

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200ef

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200ee

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    :cond_4
    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const v1, 0x7f0200f6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200f8

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200f7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    :cond_6
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    :cond_8
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0200ff

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020101

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020100

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_9
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const v1, 0x7f020117

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020119

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020118

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_b
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020107

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_c
    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f020108

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02010a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020109

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_d
    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f0200f0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200f2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200f1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_e
    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f02010b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02010d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02010c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_f
    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f02010e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020110

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02010f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_10
    const-string v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f020132

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020134

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020133

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_11
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const v1, 0x7f020111

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020113

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020112

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_13
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const v1, 0x7f02011d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02011f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02011e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_14
    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const v1, 0x7f020123

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020125

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020124

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_15
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const v1, 0x7f020126

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020128

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020127

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_17
    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const v1, 0x7f020162

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020164

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020163

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_18
    const-string v1, "hy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, 0x7f0200e7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200e9

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200e8

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_19
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const v1, 0x7f020135

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020137

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020136

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1a
    const-string v1, "ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const v1, 0x7f020114

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020116

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020115

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1b
    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const v1, 0x7f02013e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020140

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02013f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1c
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const v1, 0x7f020138

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02013a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020139

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1d
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const v1, 0x7f020141

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020143

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020142

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1e
    const-string v1, "lo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const v1, 0x7f020144

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020146

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020145

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1f
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const v1, 0x7f020147

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020149

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020148

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_20
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_21
    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const v1, 0x7f02014a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02014c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02014b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_22
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const v1, 0x7f020150

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020152

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020151

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_23
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    const v1, 0x7f02014d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02014f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02014e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_25
    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const v1, 0x7f020153

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020155

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020154

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_26
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const v1, 0x7f020102

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020104

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020103

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_27
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const v1, 0x7f020156

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020158

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020157

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_28
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const v1, 0x7f02015c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02015e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02015d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_29
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const v1, 0x7f020159

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02015b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02015a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2a
    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const v1, 0x7f020162

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020164

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020163

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2b
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const v1, 0x7f020165

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020167

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020166

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2c
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const v1, 0x7f02016e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020170

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02016f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2d
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const v1, 0x7f020171

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020173

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020172

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2e
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const v1, 0x7f020174

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020176

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020175

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2f
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const v1, 0x7f02017a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02017c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02017b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_30
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const v1, 0x7f0200f9

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200fb

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200fa

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_31
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_32
    const v1, 0x7f0200e4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f0200e6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f0200e5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_33
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const v1, 0x7f02011a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02011c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02011b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_34
    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const v1, 0x7f020120

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020122

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020121

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_35
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const v1, 0x7f020129

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02012b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02012a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_36
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const v1, 0x7f02012c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02012e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02012d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_37
    const-string v1, "ig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const v1, 0x7f02012f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020131

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020130

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_38
    const-string v1, "kk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const v1, 0x7f02013b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02013d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02013c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_39
    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const v1, 0x7f02015f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020161

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020160

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3a
    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const v1, 0x7f020168

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02016a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020169

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3b
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const v1, 0x7f020177

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f020179

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f020178

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3c
    const-string v1, "yo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const v1, 0x7f02017d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02017f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02017e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3d
    const-string v1, "tg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f02016b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const v1, 0x7f02016d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    const v1, 0x7f02016c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0
.end method

.method public getNumberOfEditableSideBarItem()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->getNumberOfEditableSideBarItem()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingButtonDimmed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public getShutterButtonDimmed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public getSuttherState()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public hideBaseMenu()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    return-void
.end method

.method public hideBaseMenuForBestShot()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    return-void
.end method

.method public hideBaseMenuForDualCaptureModeAsyncShot()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    return-void
.end method

.method public hideBaseMenuForEditQuickSettings()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBeautyMenu()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    return-void
.end method

.method public hideBaseMenuForMagicShot()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    return-void
.end method

.method public hideBeautyMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideCameraSideBar()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRecordingButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public hideReturnGroupPlayButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public hideShutterButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public hideThumbnailButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    return-void
.end method

.method public hideThumbnailList()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    goto/16 :goto_0
.end method

.method public hideThumbnailListButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideThumbnailListMenu()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailListButton()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailListButton()V

    goto :goto_0
.end method

.method public indexOfSideBarItem(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public isLaunchSettingMenuByDragStartSideBarItem()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->isLaunchSettingMenuByDragStartSideBarItem()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModeMenuOpened()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isRecordingButtonPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public isThumbnailButtonDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->noImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbnailListMenuOpened()Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x66

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x5a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2329

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x4d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    goto/16 :goto_0

    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    return-void
.end method

.method public onButtonPressed(Lcom/sec/android/glview/TwGLView;Z)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Z

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onBeautyLevelMenuSelect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 14
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/16 v13, 0xcb

    const/16 v12, 0x2f

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v9, :cond_1

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "mActivityContext is null"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-nez p1, :cond_2

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "v is null"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v9

    const/16 v10, 0x41

    if-eq v9, v10, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v9

    const/16 v10, 0x1d

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return isCapturing.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isBurstCaptureStarting()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return isBurstCaptureStarting.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return isPanoramaCapturing.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v9

    if-nez v9, :cond_8

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return isStartPreview.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return getIsLaunchGallery.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-eqz v9, :cond_a

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return mIsEffectMenuOpen.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto/16 :goto_0

    :cond_a
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v10, 0x1b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v9

    if-nez v9, :cond_0

    :cond_b
    const-string v9, "TwGLCameraBaseMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->handleCoverModeClosed()V

    move v7, v8

    goto/16 :goto_0

    :sswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "TwGLCameraBaseMenu"

    const-string v9, "Attach = group-play"

    invoke-static {v7, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "filepathlist"

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getFileListForGroupPlay()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v9, -0x1

    invoke-virtual {v7, v9, v1}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->finish()V

    move v7, v8

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->showNoImagePopup()V

    move v7, v8

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->noImage()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->showNoImagePopup()V

    :goto_1
    move v7, v8

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->showCoverModeGallery()V

    move v7, v8

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v9, "quickview"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :sswitch_2
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return isPrepareRecording.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    if-ne v9, v12, :cond_11

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v9

    if-ne v9, v8, :cond_11

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->isDualCaptureModeAsyncFirstCapturing()Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v8, "TwGLCameraBaseMenu"

    const-string v9, "return isDualAsyncCapturing.."

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_12

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMagicShotState()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v10, v10, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_SELECT:I

    if-ne v9, v10, :cond_17

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->resetMagicShot()V

    :cond_12
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_13
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v7

    if-ne v7, v13, :cond_14

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v7, v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    if-ne v7, v8, :cond_14

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStepHide()V

    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v10

    invoke-static {v8, v7, v9, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_15
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v7

    if-ne v7, v13, :cond_16

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v7, v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    if-ne v7, v8, :cond_16

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep2()V

    :cond_16
    move v7, v8

    goto/16 :goto_0

    :cond_17
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_0

    :sswitch_3
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    :cond_18
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/4 v0, 0x0

    if-ne v6, v12, :cond_1d

    const/16 v0, 0x5a

    :cond_19
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_1a
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v10, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v9, v10, v7}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v0, v7, v9, v10, v11}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_1b
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v7

    const/16 v9, 0xcc

    if-ne v7, v9, :cond_1c

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v7, v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v9, 0x6

    if-ne v7, v9, :cond_1c

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep7()V

    :cond_1c
    move v7, v8

    goto/16 :goto_0

    :cond_1d
    const/16 v9, 0x23

    if-ne v6, v9, :cond_19

    const/16 v0, 0x4d

    goto :goto_2

    :sswitch_4
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v7

    if-nez v7, :cond_1e

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_1e
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    const/16 v7, 0x6d

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v11

    invoke-static {v7, v9, v10, v11}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_1f
    move v7, v8

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_2
        0x1d -> :sswitch_1
        0x51 -> :sswitch_4
        0x71 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->removeUptateMessage()V

    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailListButton()V

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailListButton()V

    goto :goto_1
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/MotionEvent;

    const/16 v11, 0x1b

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v7, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x4d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailListMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailListMenuOpened()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v5, v6

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :pswitch_1
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v11, v9}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v7, 0xc9

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-ne v5, v10, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setStepHide()V

    goto :goto_1

    :pswitch_2
    const-string v5, "TwGLCameraBaseMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailListMenuOpened()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v5

    if-nez v5, :cond_9

    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_8
    move v5, v6

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v11, v9}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v7, 0xc9

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial1:Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setStepHide()V

    goto/16 :goto_1

    :pswitch_3
    const-string v5, "TwGLCameraBaseMenu"

    const-string v7, "onTouch MotionEvent.ACTION_CANCEL"

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    const/16 v8, 0x41

    if-ne v7, v8, :cond_12

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailListMenuOpened()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x4d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_d
    :goto_3
    :pswitch_4
    move v5, v6

    goto/16 :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v7, 0x82

    invoke-virtual {v5, v7, v9}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_3

    :pswitch_6
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "TwGLCameraBaseMenu"

    const-string v7, "return isRecording.."

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0

    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "TwGLCameraBaseMenu"

    const-string v7, "return isAutoFocusing.."

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0

    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v5

    if-nez v5, :cond_11

    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_4

    :cond_10
    move v5, v6

    goto/16 :goto_0

    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v7, 0x82

    invoke-virtual {v5, v7, v9}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v7, 0xca

    if-ne v5, v7, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->STEP_NUM:I

    if-ne v5, v6, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    const/16 v8, 0x71

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->isDim()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    :cond_13
    :goto_5
    :pswitch_7
    move v5, v6

    goto/16 :goto_0

    :pswitch_8
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v0, 0x0

    const/16 v7, 0x2f

    if-ne v4, v7, :cond_18

    const/16 v0, 0x5a

    :cond_15
    :goto_6
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_16
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v8, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v8

    invoke-static {v0, v5, v7, v8, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_17
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v7, 0xcc

    if-ne v5, v7, :cond_13

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v7, 0x6

    if-ne v5, v7, :cond_13

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep7()V

    goto/16 :goto_5

    :cond_18
    const/16 v7, 0x23

    if-ne v4, v7, :cond_15

    const/16 v0, 0x4d

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public refreshSideBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->resetEditableMenu()V

    :cond_0
    return-void
.end method

.method public removeSideBarEmptyItem()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    :cond_0
    return-void
.end method

.method public setCameraBaseMenuRequestFocus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public setCameraEnterKeyState(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    return-void
.end method

.method public setChkBaseMenuItemsShow(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mChkBaseMenuItemsShow:Z

    return-void
.end method

.method public setCoverCameraMode(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "TwGLCameraBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverCameraMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->translateAbsolute(FFZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setRotatableForCoverMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->translateAbsolute(FFZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setRotatableForCoverMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEasyMode(Z)V
    .locals 7
    .param p1    # Z

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "TwGLCameraBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEasyMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEditableSideBarDraggable(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setEditableSideBarVisibility(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setEditableSideBarVisibility(I)V

    :cond_0
    return-void
.end method

.method public setLiveBeautyMode(Z)V
    .locals 5
    .param p1    # Z

    const v4, 0x7f0b0032

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001f

    const v2, 0x7f020020

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b011d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001d

    const v2, 0x7f02001e

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b011e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRecordingButtonDimmed(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    return-void
.end method

.method public setShutterButtonDimmed(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    return-void
.end method

.method public setThumbnailButtonDimmed(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->lockButton(Z)V

    :cond_0
    return-void
.end method

.method public showBaseMenu()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBeautyMenu()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    return-void
.end method

.method public showBaseMenuForEditQuickSettings()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showCameraSideBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBeautyMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    goto :goto_0
.end method

.method public showBeautyMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showCameraSideBar()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLiveBeautyController()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public showRecordingButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public showReturnGroupPlayButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    return-void
.end method

.method public showShutterButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showThumbnailButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isModeMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showThumbnailListButton()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showThumbnailListMenu()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public startShutterAnimation()V
    .locals 8

    const/high16 v7, 0x40000000

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    return-void
.end method

.method public updateEmptyButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmptyButton()V

    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
