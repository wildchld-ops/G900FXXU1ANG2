.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final COVER_SCREEN_WINDOW_HEIGHT:I

.field private static final COVER_SCREEN_WINDOW_WIDTH:I

.field private static final FACE_IS_CENTER:I = 0x0

.field public static final FACE_IS_CENTER_BOTTOM:I = 0x8

.field public static final FACE_IS_CENTER_MIDDLE:I = 0x5

.field public static final FACE_IS_CENTER_TOP:I = 0x2

.field private static final FACE_IS_LEFT:I = 0x1

.field public static final FACE_IS_LEFT_BOTTOM:I = 0x7

.field public static final FACE_IS_LEFT_MIDDLE:I = 0x4

.field public static final FACE_IS_LEFT_TOP:I = 0x1

.field private static final FACE_IS_RIGHT:I = 0x2

.field public static final FACE_IS_RIGHT_BOTTOM:I = 0x9

.field public static final FACE_IS_RIGHT_MIDDLE:I = 0x6

.field public static final FACE_IS_RIGHT_TOP:I = 0x3

.field private static final FACE_RECT_POSITION_BISECTION:I = 0x2

.field private static final FACE_RECT_POSITION_TRISECTION:I = 0x3

.field private static final FOCUS_BUTTON_POS_X:I

.field private static final FOCUS_BUTTON_POS_Y:I

.field private static final HELPTEXT_TIMEOUT:I = 0x1b58

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERITCAL:F

.field private static final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_PANORAMA_PROGRESS_BAR_MARGIN:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_PROGRESSBBAR_LANDSCAPE_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_PROGRESSBBAR_MARGIN:F

.field private static final HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_TOP_MARGIN:F

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERITCAL:F

.field private static final INDICATOR_GROUP_HEIGHT:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_X:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_Y:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_Y_FOR_SIDE_TOUCH_MENU:I

.field private static final INDICATOR_GROUP_LANDSCAPE_RIGHT_PADDING:I

.field private static final INDICATOR_GROUP_WIDTH:I

.field private static final INDICATOR_SHADOW_Y_POS:I

.field private static final INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

.field private static final INDICATOR_SHOOTINGMODE_HEIGHT:I

.field private static final INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

.field private static final INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

.field private static final INDICATOR_SHOOTINGMODE_WIDTH:I

.field private static final INDICATOR_TEXT_SIZE:I

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final INDICATOR_TEXT_STROKE_WIDTH:I

.field private static final MAX_FACE_COUNT:I = 0xa

.field private static final REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

.field private static final REMAIN_COUNTER_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET_FOR_TFT_LCD:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_RADIUS_FOR_TFT_LCD:I

.field private static final SIDE_TOUCH_GROUP_HEIGHT:I

.field private static final SIDE_TOUCH_GROUP_WIDTH:I

.field private static final SOUNDSHOT_HELP_TEXT_POS_Y:F

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraBaseIndicators"

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c


# instance fields
.field private mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

.field private mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

.field private mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

.field private mFaceCount:I

.field private mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

.field private mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

.field private mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

.field private mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

.field private mFocusButtonPosX:I

.field private mFocusButtonPosY:I

.field private mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

.field private mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideDescription:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsHelpTextHidedByTimeOut:Z

.field private final mMatrixForFace:Landroid/graphics/Matrix;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOrientation:I

.field private mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

.field private final mRect:Landroid/graphics/RectF;

.field private mRemainCount:I

.field private mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

.field private mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

.field private mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

.field private mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

.field private mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

.field private mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

.field private mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

.field private mTouchFocusRectCenterX:I

.field private mTouchFocusRectCenterY:I

.field private mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

.field private mWifiIndicator:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x7f090006

    const/4 v0, 0x1

    const v3, 0x7f090007

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    const v1, 0x7f09031e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    const v1, 0x7f09031a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    const v1, 0x7f09006c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    const v1, 0x7f09006d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    const v1, 0x7f09006a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_RIGHT_PADDING:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_RIGHT_PADDING:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    const v1, 0x7f090068

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    const v1, 0x7f090069

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y_FOR_SIDE_TOUCH_MENU:I

    const v1, 0x7f09006b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    const v1, 0x7f0a003a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    const v1, 0x7f09006e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    const v1, 0x7f090071

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

    const v1, 0x7f090072

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    const v1, 0x7f090073

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

    const v1, 0x7f090074

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    const v1, 0x7f090075

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    const v1, 0x7f0a001d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    const/high16 v1, 0x7f080000

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    const v1, 0x7f09042c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHADOW_Y_POS:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    const v1, 0x7f090076

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    const v1, 0x7f090077

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    const v1, 0x7f090078

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    const v1, 0x7f090079

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    const v1, 0x7f0902a8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0902aa

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f0902ab

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    const v1, 0x7f0902a6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_LANDSCAPE_BOTTOM_MARGIN:F

    const v1, 0x7f0902a7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    const v1, 0x7f09007b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    const v1, 0x7f09007c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_PROGRESS_BAR_MARGIN:F

    const v1, 0x7f09007d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_TOP_MARGIN:F

    const v1, 0x7f09007a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    const v1, 0x7f0a003d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    const v1, 0x7f0a001e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_STROKE_WIDTH:I

    const v1, 0x7f0a001f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SET_SHADOW:Z

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const v1, 0x7f090241

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SOUNDSHOT_HELP_TEXT_POS_Y:F

    const v0, 0x7f0a0015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    const v0, 0x7f0a0016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET_FOR_TFT_LCD:I

    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_RADIUS_FOR_TFT_LCD:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_TOUCH_GROUP_WIDTH:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_TOUCH_GROUP_HEIGHT:I

    const v0, 0x7f0a0047

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/seccamera/SecCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setCaptureEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchHandled(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    return-object v0
.end method

.method private getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I
    .locals 6
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2    # I

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const-string v3, "TwGLCameraBaseIndicators"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v2, 0x1

    if-lt v3, p2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDownRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getLeftRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getRectPosition([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 7
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getLeftRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    :cond_0
    :goto_0
    const-string v4, "TwGLCameraBaseIndicators"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BigRectIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   CountIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_6

    if-nez v1, :cond_5

    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 v4, 0x3

    if-ne p3, v4, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getDownRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    goto :goto_0

    :cond_3
    if-ne p3, v3, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRightRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    goto :goto_0

    :cond_4
    if-ne p3, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getUpRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method private getRectPositionBasedScreen(ILandroid/graphics/RectF;I)I
    .locals 8
    .param p1    # I
    .param p2    # Landroid/graphics/RectF;
    .param p3    # I

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/high16 v7, 0x40000000

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float v1, v4, v7

    :goto_0
    cmpg-float v4, v1, v0

    if-gez v4, :cond_3

    :goto_1
    return v2

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float v1, v4, v7

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v1, v4, v7

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v1, v4, v7

    goto :goto_0

    :cond_3
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_4

    mul-float v2, v0, v7

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    const/4 v2, 0x3

    if-ne p3, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v2, v3

    goto/16 :goto_1
.end method

.method private getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I
    .locals 11
    .param p1    # I
    .param p2    # Landroid/graphics/RectF;

    const/4 v5, 0x3

    const/high16 v7, 0x41000000

    const/high16 v10, 0x40400000

    const/high16 v9, 0x40000000

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    :goto_0
    mul-float v6, v0, v10

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7

    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    const/4 v4, 0x7

    :cond_1
    :goto_1
    return v4

    :cond_2
    if-ne p1, v4, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto/16 :goto_0

    :cond_5
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_6

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    const/4 v4, 0x4

    goto/16 :goto_1

    :cond_6
    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    const/4 v4, 0x7

    goto/16 :goto_1

    :cond_7
    mul-float v6, v0, v10

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_e

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_e

    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    if-eq p1, v4, :cond_8

    if-ne p1, v5, :cond_9

    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_a
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_b

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_b

    const/4 v4, 0x5

    goto/16 :goto_1

    :cond_b
    if-eq p1, v4, :cond_c

    if-ne p1, v5, :cond_d

    :cond_c
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x8

    goto/16 :goto_1

    :cond_e
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_11

    if-eq p1, v4, :cond_f

    if-ne p1, v5, :cond_10

    :cond_f
    const/16 v4, 0x9

    goto/16 :goto_1

    :cond_10
    move v4, v5

    goto/16 :goto_1

    :cond_11
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_12

    const/4 v4, 0x6

    goto/16 :goto_1

    :cond_12
    if-eq p1, v4, :cond_13

    if-ne p1, v5, :cond_14

    :cond_13
    move v4, v5

    goto/16 :goto_1

    :cond_14
    const/16 v4, 0x9

    goto/16 :goto_1
.end method

.method private getRightRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getUpRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private declared-synchronized init()V
    .locals 21

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mInitialZoomValueOnScaleBegin:I

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    int-to-float v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mInitialZoomValueOnScaleBegin:I

    int-to-float v6, v6

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setVisibility(I)V

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v8, 0x7f0e0026

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;-><init>(Lcom/sec/android/app/camera/Camera;IILcom/sec/android/app/camera/PreviewFrameLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setDirection(I)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFlashIndicator(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0xbc4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    :cond_1
    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTimerIndicator(I)V

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0126

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getRemainCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const v1, 0x7f0a0001

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/4 v10, 0x1

    :goto_2
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setStorageIndicator(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0144

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_5
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBatteryLevel()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isBatteryCharging()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_8
    :try_start_1
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGPSIndicator(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0140

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_9
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShareIndicator(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    const v5, 0x7f020335

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x72

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setSubTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    int-to-float v6, v6

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v8, v8

    const v9, 0x7f080006

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v9

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v12, 0x1

    const v13, 0x40490fdb

    const/4 v14, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHADOW_Y_POS:I

    int-to-float v15, v1

    const v16, 0x7f080007

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const v3, 0x7f0a003b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->setClipping(Z)V

    const/16 v19, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->setAutoNightDetectionIndicatorStatus(I)V

    :goto_a
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRecordingModeIndicator(I)V

    const/16 v19, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->setAutoNightDetectionIndicatorStatus(I)V

    goto :goto_a

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->setVisibility(I)V

    goto :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    :cond_11
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    const/16 v19, 0x0

    :goto_c
    const/16 v1, 0xa

    move/from16 v0, v19

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    new-instance v11, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x42700000

    const/high16 v16, 0x42700000

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v11, v1, v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v19

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v19

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v19

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    new-instance v11, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v16, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    const-string v17, ""

    sget v18, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    invoke-direct/range {v11 .. v18}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v12, 0x1

    const v13, 0x40490fdb

    const/4 v14, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHADOW_Y_POS:I

    int-to-float v15, v1

    const v16, 0x7f080007

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v3, 0x7f0a003e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    add-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setCoverCameraMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_14
    monitor-exit p0

    return-void
.end method

.method private isBatteryPercentageDisplay()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_battery_percentage"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private needToSetShootingModeText(I)Z
    .locals 2
    .param p1    # I

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->settingShootingModeToCommandId(I)I

    move-result v0

    const/16 v1, 0x155

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->isShootingModeAvailable(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 9
    .param p1    # Landroid/graphics/Matrix;

    const/4 v1, 0x1

    const/high16 v8, 0x44fa0000

    const/high16 v7, 0x40000000

    const/high16 v5, 0x3f800000

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v1, :cond_1

    const/high16 v4, -0x40800000

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getDisplayOrientation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v4, v3

    div-float/2addr v4, v8

    int-to-float v5, v2

    div-float/2addr v5, v8

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v2

    div-float/2addr v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private showShootingModeIndicator()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShootingModeText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p1    # Landroid/graphics/Point;

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_2

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getFaceCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    return v0
.end method

.method public getTouchFocusRectCenterX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    return v0
.end method

.method public getTouchFocusRectCenterY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    return v0
.end method

.method public declared-synchronized hideAllFaceRect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->resetTranslate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hideCameraBaseIndicator()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->stopSideBezelTouchIconAnimation()V

    :cond_1
    return-void
.end method

.method public hideCameraBaseIndicatorForVirtualKey()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    return-void
.end method

.method public hideFocusIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->hideFocusRect()V

    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideScaleZoomRect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isFocusIndicatorEnabled()Z
    .locals 5

    const/16 v4, 0x30

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchFocusPositioned()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScaleZoomRectVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    sparse-switch p2, :sswitch_data_1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showShootingModeIndicator()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b016b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b016d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b016b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_TOP_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_TOP_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b016e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b016a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_PROGRESS_BAR_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_TOP_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_TOP_MARGIN:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b016f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SOUNDSHOT_HELP_TEXT_POS_Y:F

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0249

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024a

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_8
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SOUNDSHOT_HELP_TEXT_POS_Y:F

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0249

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-ne p2, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PROGRESSBBAR_PORTRAIT_BOTTOM_MARGIN:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024a

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->isFocusIndicatorEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eq v2, v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFlashIndicator(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTimerIndicator(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setStorageIndicator(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :sswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGPSIndicator(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRecordingModeIndicator(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    if-ne v2, v6, :cond_5

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    :goto_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_5
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_8

    :sswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShareIndicator(I)V

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemoteViewfinderIndicator(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    goto/16 :goto_0

    :sswitch_13
    if-ne p2, v6, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    :sswitch_14
    if-nez p2, :cond_0

    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    goto/16 :goto_0

    :sswitch_15
    if-nez p2, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicator(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_b
        0x13 -> :sswitch_12
        0x14 -> :sswitch_d
        0x16 -> :sswitch_c
        0x35 -> :sswitch_10
        0x47 -> :sswitch_f
        0x4d -> :sswitch_8
        0x55 -> :sswitch_14
        0x57 -> :sswitch_13
        0x59 -> :sswitch_15
        0x63 -> :sswitch_11
        0x6c -> :sswitch_a
        0x70 -> :sswitch_16
        0xbb8 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_6
        0xe -> :sswitch_3
        0x17 -> :sswitch_3
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1f -> :sswitch_5
        0x22 -> :sswitch_1
        0x23 -> :sswitch_7
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x2d -> :sswitch_4
        0x2e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/camera/MenuBase;

    instance-of v1, p1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->hasShowNextViewMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->startSideBezelTouchIconAnimation()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setShowNextViewMsg(Z)V

    :cond_0
    return-void
.end method

.method public onOnSideTouchIndicatorHideListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->resetLayout()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAlignForOrientation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicator(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicator(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public refreshAllIndicator()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFlashIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTimerIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setStorageIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGPSIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShareIndicator(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showShootingModeIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRecordingModeIndicator(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    goto :goto_1
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int v0, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetInit(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    return-void
.end method

.method public resetFocusPosIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetFocusPosIndicator()V

    :cond_0
    return-void
.end method

.method public resetPosIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    goto :goto_0
.end method

.method public restoreMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    return-void
.end method

.method public setAlignForOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioRecordIndicator(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setRecoring()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setAudioRecordIndicatorlevel([I)V
    .locals 1
    .param p1    # [I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setRecoringAmplitude([I)V

    goto :goto_0
.end method

.method public setAutoNightDetectionIndicator(I)V
    .locals 4
    .param p1    # I

    const v3, 0x7f0b011d

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->setAutoNightDetectionIndicatorStatus(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBatteryLevel(IZ)V
    .locals 7
    .param p1    # I
    .param p2    # Z

    const/4 v6, 0x3

    const/4 v4, 0x2

    const v2, 0x7f0b02e8

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b02e7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    const/16 v0, 0x10

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setConnectingStateGPS(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCoverCameraMode(Z)V
    .locals 4
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideCameraBaseIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->resetPositionForCoverMode(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showCameraBaseIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->resetPositionForCoverMode(IIZ)V

    goto :goto_0
.end method

.method public declared-synchronized setFaceCountChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 6
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    const/16 v0, 0xa

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    if-eq v2, v0, :cond_1

    if-lt v0, v1, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    const/4 v5, 0x2

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRectPositionBasedScreen(ILandroid/graphics/RectF;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->playFacePositionBasedScreen(I)V

    :cond_1
    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->playFaceCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFaceRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 9
    .param p1    # [Lcom/sec/android/seccamera/SecCamera$Face;

    const/16 v8, 0xa

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(IZ)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->resetTranslate()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setRect(FFFF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(IZ)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, p1, v1

    aput-object v4, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    if-eqz p1, :cond_5

    :try_start_1
    array-length v0, p1

    const/4 v2, 0x0

    if-le v0, v8, :cond_2

    const/16 v0, 0xa

    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    if-eq v3, v0, :cond_4

    if-lt v0, v2, :cond_4

    const-string v3, "VerificationLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face Detected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRectPosition([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/camera/Camera;->playFacePosition(II)V

    :cond_4
    :goto_2
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->playFacePositionBasedScreenForVoiceGuide(I)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/Camera;->playFaceCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setFlashIndicator(I)V
    .locals 3
    .param p1    # I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->setFlashStatus(I)V

    goto :goto_0
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->isFocusIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusRectIndicator(I)V

    :cond_0
    return-void
.end method

.method public setFocusRotationDegree(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusRotationDegree(I)V

    :cond_0
    return-void
.end method

.method protected setGPSIndicator(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/PreviewFrameLayout;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V

    :cond_0
    return-void
.end method

.method public setHelpText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    return-void
.end method

.method public setRecordingModeIndicator(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->setRecordingModeStatus(I)V

    goto :goto_0
.end method

.method public setRemainCount(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x4

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setRemoteViewfinderIndicator(I)V
    .locals 3
    .param p1    # I

    const-string v0, "TwGLCameraBaseIndicators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteViewfinderIndicator - mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setScaleZoomRect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setShareIndicator(I)V
    .locals 3
    .param p1    # I

    const-string v0, "TwGLCameraBaseIndicators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShareIndicator - mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;->setShareStatus(I)V

    goto :goto_0
.end method

.method public setShootingModeText()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->needToSetShootingModeText(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSideTouchIndicator(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->stopSideBezelTouchIconAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setSideTouchIndicatorState(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setSideTouchBarState(I)V

    :cond_0
    return-void
.end method

.method public setStorageIndicator(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setStorage(I)V

    if-nez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setTimerIndicator(I)V
    .locals 3
    .param p1    # I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->setTimerStatus(I)V

    goto :goto_0
.end method

.method public setTouchFocusRectCenter(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(II)V

    :cond_0
    return-void
.end method

.method public setTouchFocusRectCenterWithoutAnimation(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(IIZ)V

    :cond_0
    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 2
    .param p1    # I

    const-string v0, "TwGLCameraBaseIndicators"

    const-string v1, "setVoiceStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVoiceStatus(I)V

    goto :goto_0
.end method

.method public setWifiDirectStatus()V
    .locals 3

    const-string v1, "TwGLCameraBaseIndicators"

    const-string v2, "setWifiDirectStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ShareShot;->checkWifiConnection(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0201e7

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0201e6

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 3
    .param p1    # I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setZoomValue(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAutoNightDetectionIndicator(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public showCameraBaseIndicator()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showShootingModeIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public showFocusIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->isFocusIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->showFocusIndicator(I)V

    :cond_0
    return-void
.end method

.method public showHelpText()V
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public showVoiceInputIndicator(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public shrinkFocusRect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->shrinkRect()V

    :cond_0
    return-void
.end method

.method public declared-synchronized startHideFaceRectAnimation()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public startSideBezelTouchIconAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->startSideBezelTouchIconAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y_FOR_SIDE_TOUCH_MENU:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->moveLayoutAbsolute(FF)V

    :cond_0
    return-void
.end method

.method public stopSideBezelTouchIconAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->stopSideBezelTouchIconAnimation()V

    :cond_0
    return-void
.end method
