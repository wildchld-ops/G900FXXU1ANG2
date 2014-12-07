.class public Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList$OnThumbnailListCloseListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative$OnVirtualTourEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final BUTTON_TEXT_FONT_SIZE:I

.field private static final CALIBRATION_DURATION:I = 0x3

.field private static final CALIBRATION_NOTIFICATION_PER_SECOND:I = 0xe

.field private static final CALIBRATION_UPDATE_DEGREE:I = 0xc

.field private static final CALIBRATION_UPDATE_THRESHOLD_PER_SECOND:I = 0xa

.field private static final COUNTER_DISPLAY_THRESHOLD:I = 0x14

.field private static final COUNTER_INDICATOR_HEIGHT:I

.field private static final COUNTER_INDICATOR_POS_X:I

.field private static final COUNTER_INDICATOR_POS_Y:I

.field private static final COUNTER_INDICATOR_WIDTH:I

.field private static final COUNTER_TEXT_STROKE_WIDTH:I

.field private static final DONE_BUTTON_POS_X:I

.field private static final DONE_BUTTON_POS_Y:I

.field private static final EG_VT_UI_INDICATOR_DEACTIVE_BEND_UI:I = 0x24

.field private static final EG_VT_UI_INDICATOR_DEACTIVE_TURNING_AFTER_WALKING_WARNING_UI:I = 0x26

.field private static final EG_VT_UI_INDICATOR_WARNING_APPROACHING_WALK_MAX_BOUNDARY:I = 0x25

.field private static final EG_VT_UI_INDICATOR_WARNING_BEND_DEVICE_DOWN:I = 0x21

.field private static final EG_VT_UI_INDICATOR_WARNING_BEND_DEVICE_UP:I = 0x20

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERITCAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERITCAL:F

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final LEFT_INDICATOR_POS_X:[I

.field private static final LEFT_INDICATOR_POS_Y:[I

.field private static final MAX_SWEEP_COUNT:I = 0x1e

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_LANDSCAPE:I = 0x2

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_PORTRAIT:I = 0x1

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_REVERSE_LANDSCAPE:I = 0x4

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_REVERSE_PORTRAIT:I = 0x3

.field private static final MSG_CALIBRATION_DONE:I = 0x7

.field private static final MSG_CALIBRATION_ERROR_SENSOR_FAILED_IN_CALIBRATION:I = 0x27

.field private static final MSG_CALIBRATION_FAILED:I = 0x6

.field private static final MSG_CALIBRATION_IN_PROGRESS:I = 0x9

.field private static final MSG_CALIBRATION_OUT_OF_WINDOW:I = 0x8

.field private static final MSG_CALIBRATION_STARTED:I = 0x5

.field private static final MSG_DONE_WITHOUT_SAVING:I = 0xc9

.field private static final MSG_DONE_WITH_SAVING:I = 0xc8

.field private static final MSG_DONE_WITH_SAVING_ON_ORIENTATION_CHANGED:I = 0xca

.field private static final MSG_ERROR_BOTH_WALK_AND_TURN:I = 0x23

.field private static final MSG_ERROR_INTOLERABLE_DEVICE_SHAKE:I = 0x17

.field private static final MSG_ERROR_NO_CAPTURES_TIME_OUT:I = 0x18

.field private static final MSG_ERROR_WALKING_AFTER_TURNING:I = 0x22

.field private static final MSG_FIRST_IMAGE_UNDONE:I = 0x10

.field private static final MSG_GUIDE_ROTATE_DEVICE_ANTICLOCKWISE:I = 0x66

.field private static final MSG_GUIDE_ROTATE_DEVICE_CLOCKWISE:I = 0x65

.field private static final MSG_IN_STATIONARY:I = 0xf

.field private static final MSG_IS_CAPTURABLE:I = 0xa

.field private static final MSG_MAX_SIZE:I = 0x27

.field private static final MSG_SAVING_DONE:I = 0x3e8

.field private static final MSG_TURN_LEFT_INPROGRESS_BLINKING:I = 0x1a

.field private static final MSG_TURN_LEFT_IN_PROGRESS:I = 0xd

.field private static final MSG_TURN_LEFT_MAX_BOUNDARY_CROSSED:I = 0x1e

.field private static final MSG_TURN_RIGHT_INPROGRESS_BLINKING:I = 0x1b

.field private static final MSG_TURN_RIGHT_IN_PROGRESS:I = 0xe

.field private static final MSG_TURN_RIGHT_MAX_BOUNDARY_CROSSED:I = 0x1f

.field private static final MSG_WALKIN_MAX_BOUNDARY_CROSSED:I = 0xc

.field private static final MSG_WALKIN_MIN_BOUNDARY_CROSSED:I = 0xb

.field private static final MSG_WALK_IN_PROGRESS_BLINKING:I = 0x19

.field private static final MSG_WARNING_APPROACHING_WALK_MAX_BOUNDARY:I = 0xcb

.field private static final MSG_WARNING_ARROW_SOUND:I = 0xcc

.field private static final MSG_WARNING_DISABLE_TOO_FAST:I = 0x16

.field private static final MSG_WARNING_MAX_SWEEP_PHOTO_CROSSED:I = 0x12

.field private static final MSG_WARNING_PITCH_BOUNDARY_CROSSED:I = 0x13

.field private static final MSG_WARNING_ROLL_BOUNDARY_CROSSED:I = 0x14

.field private static final MSG_WARNING_TOO_FAST:I = 0x15

.field private static final MSG_WARNING_TURNING_AFTER_WALKING:I = 0x11

.field private static final MSG_WARNING_TURN_APPROACHING_LEFT_MAX_BOUNDARY:I = 0x1c

.field private static final MSG_WARNING_TURN_APPROACHING_RIGHT_MAX_BOUNDARY:I = 0x1d

.field private static final PROGRESSWHEEL_CALIBRATION_HEIGHT:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_X:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_Y:I

.field private static final PROGRESSWHEEL_CALIBRATION_WIDTH:I

.field private static final PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_X:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_Y:I

.field private static final PROGRESSWHEEL_CAPTURABLE_WIDTH:I

.field private static final REMAIN_STEP_THRESHOLD:I = 0x6

.field private static final REQUIRED_STORAGE_SIZE:J = 0x1400000L

.field private static final RIGHT_INDICATOR_POS_X:[I

.field private static final RIGHT_INDICATOR_POS_Y:[I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final STABILIZER_STATE_CALIBRATION:I = 0x1

.field private static final STABILIZER_STATE_CAPTURABLE:I = 0x2

.field private static final STABILIZER_STATE_INVISIBLE:I = 0x0

.field private static final STRAIGHT_INDICATOR_POS_X:[I

.field private static final STRAIGHT_INDICATOR_POS_Y:[I

.field private static final TAG:Ljava/lang/String; = "TwGL3DTourMenu"

.field private static final TAGTHRD:Ljava/lang/String; = "3DAlign"

.field private static final THUMBNAIL_LIST_HEIGHT:I

.field private static final THUMBNAIL_LIST_POS_X:I

.field private static final THUMBNAIL_LIST_POS_Y:I

.field private static final THUMBNAIL_LIST_WIDTH:I

.field private static final UNDO_BUTTON_HEIGHT:I

.field private static final UNDO_BUTTON_TEXT_PADDING:I

.field private static final UNDO_THRESHOLD:I = 0x2

.field private static final WARNING_ARROW_HEIGHT:I

.field private static final WARNING_ARROW_SHUTTER_POS_X:I

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static final WARNING_ARROW_WIDTH:I

.field private static final WARNING_TEXT_HEIGHT:F

.field private static final WARNING_TEXT_MARGIN:F

.field private static final WARNING_TEXT_WIDTH:F

.field private static mActivityContext:Lcom/sec/android/app/camera/Camera;

.field static mPf32TransitionData:[F

.field static mPs32Direction:[I


# instance fields
.field private final BACKGROUND_THREAD_SATE_START:I

.field private final BACKGROUND_THREAD_STATE_FINISH_REMAINING:I

.field private final BACKGROUND_THREAD_STATE_KILL:I

.field private final BACKGROUND_THREAD_STATE_PAUSE:I

.field private final BACKGROUND_THREAD_STATE_RESUME:I

.field private final BACKGROUND_THREAD_STATE_RUNNING:I

.field private mAngleY:F

.field private mAngleZ:F

.field private mBackGroundThread:Ljava/lang/Thread;

.field private mBackGroundThreadRunning:Z

.field private mBackGroundThreadState:I

.field private mBlinkingAnimation:Landroid/view/animation/Animation;

.field private mCalibrationInProgressCount:I

.field private mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturing:Z

.field private mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCounterText:Lcom/sec/android/glview/TwGLText;

.field private mCurrentPhotoCount:I

.field protected mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

.field private mDoneButton:Lcom/sec/android/glview/TwGLButton;

.field private mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

.field private mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerActiveFlag:Z

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHorizonCalibrationThread:Ljava/lang/Thread;

.field private mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mIAProgressCount:I

.field private mImageAlignmentVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSavingThread:Ljava/lang/Thread;

.field private mIsTranslationValid:[I

.field private mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

.field private mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOrientation:I

.field private mOrientationForPicture:I

.field private mPlayWarningArrowSound:Z

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/secvision/solutions/virtualtour/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProgressDegree:I

.field private mRemainingStepCount:I

.field private mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

.field private mRightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mRunning:Z

.field mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

.field private mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

.field private mTransitionsData:[F

.field private mTransitionsType:[I

.field private mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

.field private mUndoButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;

.field private miIAThrdCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    const v0, 0x7f090001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f090364

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    const v0, 0x7f090365

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    const v0, 0x7f090366

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    const v0, 0x7f090367

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    const v0, 0x7f090016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_X:I

    const v0, 0x7f090017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_Y:I

    const v0, 0x7f090368

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    const v0, 0x7f090369

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    const v0, 0x7f0a0049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    new-array v0, v6, [I

    const v3, 0x7f09036a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f09036b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f09036c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f09036d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    new-array v0, v6, [I

    const v3, 0x7f09036e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f09036f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090370

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090371

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    new-array v0, v6, [I

    const v3, 0x7f090372

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f090373

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090374

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090375

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    new-array v0, v6, [I

    const v3, 0x7f090376

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f090377

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090378

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090379

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    new-array v0, v6, [I

    const v3, 0x7f09037a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f09037b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f09037c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f09037d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    new-array v0, v6, [I

    const v3, 0x7f09037e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f09037f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090380

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090381

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const v0, 0x7f090382

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_X:I

    const v0, 0x7f090383

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_Y:I

    const v0, 0x7f090384

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_WIDTH:I

    const v0, 0x7f090385

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    const v0, 0x7f09038a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    const v0, 0x7f09038b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    const v0, 0x7f09035e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    const v0, 0x7f09038c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    const v0, 0x7f09038d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const v0, 0x7f09038e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    const v0, 0x7f09038f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    const v0, 0x7f090390

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    const v0, 0x7f090391

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    const v0, 0x7f090392

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    const v0, 0x7f090393

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    const v0, 0x7f09007a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_X:F

    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    const v0, 0x7f0a003d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIZE:F

    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0a001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SET_SHADOW:Z

    const v0, 0x7f0a0015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    const/high16 v0, 0x7f080000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    const v0, 0x7f090388

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    const v0, 0x7f090389

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    float-to-int v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_Y:I

    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    new-array v0, v1, [F

    const/4 v3, 0x0

    aput v3, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    new-array v0, v1, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 15
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x6

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleZ:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_SATE_START:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_RUNNING:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_PAUSE:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_RESUME:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_KILL:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_FINISH_REMAINING:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setCaptureEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setTouchHandled(Z)V

    sput-object p1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b02d0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    sub-int v13, v1, v14

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b02d0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIIZZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b02d0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    int-to-float v3, v14

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    const/4 v3, 0x0

    int-to-float v4, v14

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020208

    const v6, 0x7f020209

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v6, v6

    const-string v7, ""

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    invoke-direct {v1}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    new-instance v1, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    invoke-direct {v1}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    sget-boolean v1, Lcom/sec/android/secvision/solutions/virtualtour/Constant;->MODELLER_IMAGE_ALIGNMENT_MODULE:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-direct {v1}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->set_nKeypoints(I)V

    :cond_0
    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    const/16 v1, 0x1d

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    const/16 v1, 0x1d

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    const/16 v1, 0x1d

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    invoke-direct {v3}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    invoke-direct {v3}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setOnThumbnailListCloseListener(Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList$OnThumbnailListCloseListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020234

    const v6, 0x7f020236

    const v7, 0x7f020235

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    const v7, 0x7f0201aa

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const v7, 0x7f0201a7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201a8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201a9

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    const/4 v11, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    const v7, 0x7f0b021d

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    const v7, 0x7f0b0173

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0203b4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->moveBaseLayout(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->getBlinkAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private ImageAlignment(I)I
    .locals 12
    .param p1    # I

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-string v1, "3DAlign"

    const-string v2, "ImageAlignment : Improper params"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageAlignment : Improper params-> Vecsize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_3
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The vector has exceeded the limit. current size= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;

    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    const-string v1, "3DAlign"

    const-string v2, "ImageAlignment : Unable to fetch from vector"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_6
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Index1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Transition Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "3DAlign"

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "3DAlign"

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientationForPicture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    if-nez v1, :cond_9

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_1
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "Calling Translation Vector Estimation if bmps not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_16

    if-eqz v8, :cond_16

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_7

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_13

    :cond_7
    const-string v1, "3DAlign"

    const-string v2, "WALK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v8, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WalkVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v11

    :goto_2
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    move v1, v11

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    const/high16 v1, 0x43340000

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    const/high16 v1, 0x43870000

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v0, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    const/high16 v1, 0x42b40000

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v0, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_12
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "Wrong Orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_13
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    :cond_14
    const-string v1, "3DAlign"

    const-string v2, "TURN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v8, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->TurnVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v11

    goto/16 :goto_2

    :cond_15
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NONE: Wrong Transition Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_16
    if-nez v7, :cond_17

    const-string v1, "3DAlign"

    const-string v2, "Bm1 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-nez v8, :cond_8

    const-string v1, "3DAlign"

    const-string v2, "Bm2 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private TurnVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 20
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->computeCameraParameters(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    aget v2, v2, p3

    invoke-static {v2}, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->computeSearchRegions(F)V

    const-string v2, "TwGL3DTourMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " angle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    aget v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    const/4 v15, 0x0

    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->matchImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;

    new-instance v16, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v2, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x1:F

    iget v3, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y1:F

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    new-instance v17, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v2, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x2:F

    iget v3, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y2:F

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->containsPoint(Lcom/sec/android/secvision/solutions/virtualtour/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->containsPoint(Lcom/sec/android/secvision/solutions/virtualtour/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v9, 0x41200000

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/secvision/solutions/virtualtour/Point;->getDistance(Lcom/sec/android/secvision/solutions/virtualtour/Point;)F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/secvision/solutions/virtualtour/Point;->getDistance(Lcom/sec/android/secvision/solutions/virtualtour/Point;)F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_2

    const/4 v8, 0x1

    :cond_1
    if-nez v8, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v12, v13}, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->computeTurn(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    const/4 v3, 0x1

    aput v3, v2, p3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    new-instance v3, Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v4, v4, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v4, v4, Lcom/sec/android/secvision/solutions/virtualtour/Point;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v5, v5, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v5, v5, Lcom/sec/android/secvision/solutions/virtualtour/Point;->y:F

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/secvision/solutions/virtualtour/Vector3;-><init>(FFF)V

    aput-object v3, v2, p3

    const-string v2, "TwGL3DTourMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in turn vector VALID VECTORm_oResult.m_ptAnchor.x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v4, v4, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v4, v4, Lcom/sec/android/secvision/solutions/virtualtour/Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m_oResult.m_ptAnchor.y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v4, v4, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v4, v4, Lcom/sec/android/secvision/solutions/virtualtour/Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-virtual {v2}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->clean()V

    const-string v2, "TwGL3DTourMenu"

    const-string v3, "Turn Vector executed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_5
    const-string v2, "TwGL3DTourMenu"

    const-string v3, "in turn vector  NOT VALID VECTOR"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private WalkVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 10
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # I

    const/4 v9, 0x1

    const/4 v0, 0x0

    const-string v6, "TwGL3DTourMenu"

    const-string v7, "WalkVectorEstimation Start"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->matchImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v5

    const-string v6, "TwGL3DTourMenu"

    const-string v7, "KeyPointMatching executed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;

    new-instance v6, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v7, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x1:F

    iget v8, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y1:F

    invoke-direct {v6, v7, v8}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v7, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x2:F

    iget v8, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y2:F

    invoke-direct {v6, v7, v8}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v6, "TwGL3DTourMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lst1.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v6, 0x42480000

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry;->setCameraCalibrationMatrixParameters(FII)V

    invoke-static {v2, v3}, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry;->computeTranslation(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry$TranslationResult;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry$TranslationResult;->m_vTranslation:Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    if-eqz v6, :cond_2

    const-string v6, "TwGL3DTourMenu"

    const-string v7, "VALID VECTOR"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    aput v9, v6, p3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    iget-object v7, v0, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry$TranslationResult;->m_vTranslation:Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    aput-object v7, v6, p3

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-virtual {v6}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->clean()V

    const-string v6, "TwGL3DTourMenu"

    const-string v7, "WalkVectorEstimation executed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "NOT VALID VECTOR"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()Lcom/sec/android/app/camera/Camera;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 2
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$1512(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ZI)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # Z
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;IZ)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetDirectionEstimator()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[F
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->prepareDirectories()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->calculateOrientationForPicture(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    return v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    return p1
.end method

.method static synthetic access$4008(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 2
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Thread;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->ImageAlignment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetStabilizer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setProgress(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3
    .param p1    # I

    move v0, p1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method private declared-synchronized closeDirectionEstimator()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "closeDirectionEstimator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    if-nez v0, :cond_0

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopCalibrationThread()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    invoke-virtual {v0}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;FFFF)V
    .locals 0
    .param p1    # Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    iput p2, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->x:F

    iput p3, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->y:F

    iput p4, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    iput p5, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->height:F

    return-void
.end method

.method private fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;)V
    .locals 1
    .param p1    # Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;
    .param p2    # Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->x:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->x:F

    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->y:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->y:F

    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->height:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->height:F

    return-void
.end method

.method private getAnimation(I)Landroid/view/animation/AnimationSet;
    .locals 8
    .param p1    # I

    const/4 v6, 0x0

    const/high16 v5, -0x40800000

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v2, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-object v1

    :pswitch_0
    const/4 v2, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v3, v5, v4

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    goto :goto_0

    :pswitch_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v2, v5, v4

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onDone(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onDone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideThumbnailButton()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0, v3, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->saveSEFFile()V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetHorizon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->resetList()V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetDirectionEstimator()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->prepareDirectories()V

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetContinuousFileSequence()V

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->on3DTourComplete()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0173

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->closeDirectionEstimator()V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    goto :goto_2
.end method

.method private openDirectionEstimator()V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "openDirectionEstimator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    :goto_1
    const/16 v0, 0x27

    if-gt v6, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/4 v6, 0x0

    :goto_2
    const/16 v0, 0x1d

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    aput v2, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    aput-object v3, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    const/4 v1, 0x0

    aput v1, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    aput v2, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    aput-object v3, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "resetDirectionEstimator return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startCalibrationThread()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startImageAlignmentThread()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private prepareDirectories()V
    .locals 8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "prepareDirectories return because of null pointer"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    const-string v7, "/.3DTour"

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_1

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private resetDirectionEstimator()V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "resetDirectionEstimator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopCalibrationThread()V

    const/4 v6, 0x1

    :goto_0
    const/16 v0, 0x27

    if-gt v6, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/4 v6, 0x0

    :goto_1
    const/16 v0, 0x1d

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    aput v2, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    aput-object v3, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    const/4 v1, 0x0

    aput v1, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    aput v2, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    aput-object v3, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "resetDirectionEstimator return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startCalibrationThread()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startImageAlignmentThread()V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private resetHorizon()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    return-void
.end method

.method private resetStabilizer()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setProgress(I)V

    return-void
.end method

.method private saveSEFFile()V
    .locals 2

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "saveSEFFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setProgress(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    return-void
.end method

.method private setRemainCounter()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStabilizerVisibleState(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStabilizerVisibleState(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    const/4 v2, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setWarningArrowVisibleState(ZI)V
    .locals 10
    .param p1    # Z
    .param p2    # I

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_8

    packed-switch p2, :pswitch_data_0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-nez v2, :cond_1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0b021d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v7, :cond_2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v8, :cond_3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v9, :cond_0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-nez v2, :cond_5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0b021e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v7, :cond_6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v8, :cond_7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v9, :cond_4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_9
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startCalibrationThread()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startImageAlignmentThread()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-nez v1, :cond_1

    const-string v1, "3DAlign"

    const-string v2, "m_ImageAlignmentObj = null or m_ImageAlignmentObj = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startimgAlignthrd already exist...size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlignThrdName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    const-string v1, "3DAlign"

    const-string v2, "Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startImageAlignmentThread: Previous Thread active: Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "3DAlign"

    const-string v2, "startImageAlignmentThread: Killing the previous thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private stopCalibrationThread()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopImageAlignmentThread(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I

    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopImageAlignmentThread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "3DAlign"

    const-string v2, "BackGround Thread Join 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const-string v1, "3DAlign"

    const-string v2, "BackGround Thread Join 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-nez v1, :cond_2

    const-string v1, "TwGL3DTourMenu"

    const-string v2, "Return because of null pointer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    goto :goto_1
.end method

.method private updateHorizon()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v3, 0x40000000

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    return-void

    :pswitch_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v1, v5, v2

    goto :goto_0

    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v0, v2, v3

    goto :goto_0

    :pswitch_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v1, v2, v3

    goto :goto_0

    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v0, v5, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private waitImageSavingThread()V
    .locals 3

    const-string v1, "3DAlign"

    const-string v2, "waitImageSavingThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "waitImageSavingThread Join 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const-string v1, "TwGL3DTourMenu"

    const-string v2, "waitImageSavingThread Join 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "waitImageSavingThread not require"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public SOnStepWalk_RemainingStepsUpdate(I)V
    .locals 3
    .param p1    # I

    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining StepCount - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public createTemplate()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "TwGL3DTourMenu"

    const-string v6, "createTemplate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_1

    :cond_0
    const-string v5, "TwGL3DTourMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong Case mCurrentPhotoCount= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->GetTemplate(I[F[I)I

    move-result v1

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-nez v5, :cond_4

    const-string v5, "TwGL3DTourMenu"

    const-string v6, "createTemplate First Photo"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v5, v5, v9

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Photo  1 at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " degrees"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_1
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v5

    const-string v6, "/.3DTour"

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3DTour_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-gt v5, v10, :cond_8

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v6, p0, v7, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ILjava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setRemainCounter()V

    const-string v5, "TwGL3DTourMenu"

    const-string v6, "createTemplate Exited"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_2

    const-string v5, "TwGL3DTourMenu"

    const-string v6, "createTemplate Photo %d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "TwGL3DTourMenu"

    const-string v6, "!#!! CURRENTPHOTOoclk %d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v7, v7, v9

    aput v7, v5, v6

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v5, v5, v9

    if-ne v5, v10, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v7, v7, v9

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    neg-double v7, v7

    double-to-float v7, v7

    aput v7, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Photo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " turned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Left "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " degrees"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_5
    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v5, v5, v9

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v7, v7, v9

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Photo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " turned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Right "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " degrees"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v5, v5, v9

    const/16 v6, 0x9

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v7, v7, v9

    aput v7, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Photo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Walk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_7
    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v5, v5, v9

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v7, v7, v9

    aput v7, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Photo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Walk++"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v6, v6, -0x2

    aget v2, v5, v6

    goto/16 :goto_2
.end method

.method public getRequiredStorageSize()J
    .locals 2

    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method public hideCaptureLayout()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->resetList()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    return-void
.end method

.method public onBack()V
    .locals 2

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x1

    const-string v5, "TwGL3DTourMenu"

    const-string v6, "onClick"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->removeLastThumbnail()V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-eqz v5, :cond_4

    const-string v4, "TwGL3DTourMenu"

    const-string v5, "Undo from queue"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    :goto_0
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    const-string v5, "/.3DTour"

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3DTour_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->reduceContinuousFileSequence()V

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_2
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0b0173

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    invoke-static {}, Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;->SNOnUndoFlagUpdate()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setRemainCounter()V

    :goto_1
    return v3

    :cond_4
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-le v5, v3, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->startAnimation()V

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method public onHide()V
    .locals 2

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->closeDirectionEstimator()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->hideCaptureLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    return-void
.end method

.method public onImageStoringCompleted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back button pressed current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onOnThumbnailListCloseListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->startAnimation()V

    :cond_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1    # I

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onOrientationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->closeDirectionEstimator()V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->hideCaptureLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->openDirectionEstimator()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->showCaptureLayout()V

    return-void
.end method

.method public onShow()V
    .locals 3

    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->prepareDirectories()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetStabilizer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    invoke-static {}, Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;->getInstance()Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;->setStackStateListener(Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative$OnVirtualTourEventListener;)V

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->openDirectionEstimator()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->showCaptureLayout()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1    # I

    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAngles(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleZ:F

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->updateHorizon()V

    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setRemainCounter()V

    return-void
.end method

.method public updateThumbnail([B)V
    .locals 3
    .param p1    # [B

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->addThumbnail([BII)V

    return-void
.end method
