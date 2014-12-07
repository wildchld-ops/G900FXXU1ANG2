.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

.field private static final ANIMATED_PHOTO_PROGRESS_GROUP_X:I

.field private static final ANIMATED_PHOTO_REC_TIME_TEXT_SHADOW:Z

.field private static final CAF_BUTTON_POS_X:I

.field private static final CAF_BUTTON_POS_Y:I

.field private static final DISABLE_SEC:J = 0x3e8L

.field private static final DUAL_BUTTON_POS_X:I

.field private static final DUAL_BUTTON_POS_Y:I

.field private static final DUAL_BUTTON_WIDTH:I

.field public static final DUAL_RECORDING_TIMER_MSG:I = 0x2

.field protected static final DUAL_RECORDING_UPDATE_TIME:I = 0x3e8

.field private static final DUAL_SWITCH_BUTTON_POS_X:I

.field private static final DUAL_SWITCH_BUTTON_POS_Y:I

.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field public static final HELP_TUTORIAL_STEP_COMPLETE_MSG:I = 0x3

.field private static final INDICATOR_FAST_MOTION_GROUP_POS_Y:I

.field private static final INDICATOR_FAST_MOTION_GROUP_WIDTH:I

.field private static final INDICATOR_FAST_MOTION_REC_POS_X:I

.field private static final INDICATOR_FAST_MOTION_TIME_IMG_POS_X:I

.field private static final INDICATOR_FAST_MOTION_TIME_IMG_POS_Y:I

.field private static final INDICATOR_GROUP_HEIGHT:I

.field private static final INDICATOR_GROUP_POS_X:I

.field private static final INDICATOR_GROUP_POS_Y:I

.field private static final INDICATOR_GROUP_WIDTH:I

.field private static final INDICATOR_HEIGHT:I

.field private static final INDICATOR_LEFT_MARGIN:I

.field private static final INDICATOR_MICOFF_POS_X:I

.field private static final INDICATOR_MICOFF_POS_Y:I

.field private static final INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

.field private static final INDICATOR_SIDE_MARGIN:I

.field private static final INDICATOR_TIMER_GROUP_POS_Y:I

.field private static final INDICATOR_TOP_MARGIN:I

.field public static final MAX_EMAIL_SIZE:J = 0x3200000L

.field private static final MAX_RECORDING_TIME:I = 0x1517f

.field private static final ONE_SECOND:I = 0x1

.field private static final PAUSE_ICON_POS_X:I

.field private static final PROGRESSBAR_HEIGHT:I

.field private static final PROGRESSBAR_POS_X:I

.field private static final PROGRESSBAR_SIDE_MARGIN:I

.field private static final PROGRESSBAR_WIDTH:I

.field private static final PROGRESS_GROUP_BOTTOM_MARGIN:I

.field private static final PROGRESS_GROUP_BOTTOM_MARGIN_180:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_SIDE_MARGIN:I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final PROGRESS_GROUP_X:I

.field private static final PROGRESS_GROUP_Y:I

.field private static final PROGRESS_MAX_SIZE_POS_X:I

.field private static final PROGRESS_SIZE_TEXT_WIDTH:I

.field private static final RECORDINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final RECORDING_DUAL_TIME_TEXT_WIDTH:I

.field private static final RECORDING_INDICATOR_MIC_ICON_MARGIN:I

.field private static final RECORDING_INDICATOR_MIC_ICON_WIDTH:I

.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_MENU_TAKEPICTURE:I = 0x5

.field private static final RECORDING_MODE_TEXT_SHADOW:Z

.field private static final RECORDING_PAUSE_BUTTON_POS_X:I

.field private static final RECORDING_PAUSE_BUTTON_POS_Y:I

.field private static final RECORDING_SIZE_GROUP_HEIGHT:I

.field private static final RECORDING_SIZE_GROUP_WIDTH:I

.field private static final RECORDING_SIZE_TEXT_STROKE_COLOR:I

.field private static final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private static final RECORDING_STOP_BUTTON_POS_X:I

.field private static final RECORDING_STOP_BUTTON_POS_Y:I

.field private static final RECORDING_TEXT_STROKE_WIDTH:I

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1

.field private static final RECORDING_TIME_TEXT_STROKE_COLOR:I

.field private static final RECORDING_TIME_TEXT_WIDTH:I

.field private static final REC_ICON_TEXT_STROKE_COLOR:I

.field private static final REC_ICON_TEXT_WIDTH:I

.field private static final REC_ICON_WIDTH:I

.field private static final REC_INDICATOR_TEXT_SIZE:I

.field private static final REC_SIZE_TEXT_SIZE:I

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final SETTINGS_LINE1_POS_X:I

.field private static final SETTINGS_LINE1_POS_X_MARGIN:I

.field private static final SETTINGS_LINE1_POS_Y:I

.field private static final SETTINGS_LINE2_POS_X:I

.field private static final SETTINGS_LINE2_POS_Y:I

.field private static final SETTINGS_LINE3_POS_X:I

.field private static final SETTINGS_LINE3_POS_Y:I

.field private static final SETTINGS_LINE_MARGIN:I

.field private static final SIDE_MENU_HEIGHT:I

.field private static final SIDE_MENU_WIDTH:I

.field private static final SNAPSHOT_BUTTON_POS_X:I

.field private static final SNAPSHOT_BUTTON_POS_Y:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderRecordingMenu"


# instance fields
.field private isEmailMode:Z

.field private isRecRemainTimeVisibility:Z

.field private isSharingMode:Z

.field private mAnimatedPhotoMaxRecTime:Ljava/lang/String;

.field private mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

.field private mCAFButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCurRecSize:Lcom/sec/android/glview/TwGLText;

.field private mDualButton:Lcom/sec/android/glview/TwGLButton;

.field private mDualFHDRecordingMaxLimitTime:I

.field private mDualHDRecordingMaxLimitTime:I

.field private mDualRecordingHandler:Landroid/os/Handler;

.field private mDualRecordingTimeUpdateRepeat:I

.field private mDualSwitch:Lcom/sec/android/glview/TwGLButton;

.field mDualView:Lcom/sec/android/app/camera/MenuBase;

.field private mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mFastModeSpeed:I

.field private mFastModeTimerValue:I

.field private mHMS:Ljava/lang/String;

.field private mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorFastModeTimerImg:[I

.field private mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorStabilisationIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMicOffImage:Lcom/sec/android/glview/TwGLImage;

.field private mPauseButton:Lcom/sec/android/glview/TwGLButton;

.field private mPauseTime:J

.field private mProgress:I

.field private mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecBackground:Lcom/sec/android/glview/TwGLImage;

.field private mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeText:Lcom/sec/android/glview/TwGLText;

.field private mRecordingDualMode:I

.field private mRecordingHelpCompleteHandler:Landroid/os/Handler;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mRemainRecTime:I

.field private mRemainRecordingMaxLimitTime:I

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResumeButton:Lcom/sec/android/glview/TwGLButton;

.field private mResumeTime:J

.field private mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

.field private mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

.field private mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

.field private mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopping:Z

.field private mUHDRecordingMaxLimitTime:I

.field private preSecond:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v4, 0x7f0900a5

    const v5, 0x7f0900a0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    const v0, 0x7f09000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    const v0, 0x7f090010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_INDICATOR_TEXT_SIZE:I

    const v0, 0x7f0a0043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    const v0, 0x7f0900a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    const v0, 0x7f0900a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    const v0, 0x7f0900a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TIMER_GROUP_POS_Y:I

    const v0, 0x7f0900a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    const v0, 0x7f0900a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    const v0, 0x7f0900b4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    const v0, 0x7f0900b3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PAUSE_ICON_POS_X:I

    const v0, 0x7f0900b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    const v0, 0x7f0900b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    const v0, 0x7f0900aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    const v0, 0x7f0900ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    const v0, 0x7f080002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    const/high16 v0, 0x7f080000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    const v0, 0x7f080003

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    const v0, 0x7f0900ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    const v0, 0x7f0900ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_POS_Y:I

    const v0, 0x7f0900ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_Y:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_Y:I

    const v0, 0x7f0900c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    const v0, 0x7f0900c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    const v0, 0x7f0900c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    const v0, 0x7f0900ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    const v0, 0x7f0900cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    const v0, 0x7f0900cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN:I

    const v0, 0x7f0900cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_X:I

    const v0, 0x7f0900b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    const v0, 0x7f09009e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SNAPSHOT_MARGIN_Y:I

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_X:I

    const v0, 0x7f0900a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_Y:I

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_X:I

    const v0, 0x7f09009f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_Y:I

    const v0, 0x7f0900a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_X:I

    const v0, 0x7f0900a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_Y:I

    const v0, 0x7f0900b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    const v0, 0x7f0900b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    const v0, 0x7f0900ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    const v0, 0x7f0900bb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_X:I

    const v0, 0x7f0900bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_Y:I

    const v0, 0x7f0900bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_X:I

    const v0, 0x7f0900be

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_Y:I

    const v0, 0x7f0900bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    const v0, 0x7f0900c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    const v0, 0x7f0900c0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    const v0, 0x7f0900c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    const v0, 0x7f0900c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_X:I

    const v0, 0x7f0900c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_Y:I

    const v0, 0x7f0900c5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_X:I

    const v0, 0x7f0900c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_Y:I

    const v0, 0x7f090016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_X:I

    const v0, 0x7f090017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_Y:I

    const v0, 0x7f0a0019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    const v0, 0x7f0a0018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_REC_TIME_TEXT_SHADOW:Z

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    const-string v0, "00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    const-string v0, "10:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualFHDRecordingMaxLimitTime:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualHDRecordingMaxLimitTime:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mUHDRecordingMaxLimitTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->setTouchHandled(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->init()V

    return-void

    :array_0
    .array-data 4
        0x7f02020b
        0x7f02020c
        0x7f02020d
        0x7f02020e
        0x7f02020f
        0x7f020210
        0x7f020211
        0x7f020212
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    return v0
.end method

.method static synthetic access$220(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private hmsConvert(I)Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    const v3, 0x1517f

    if-le p1, v3, :cond_0

    const p1, 0x1517f

    :cond_0
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v1, p1, 0x3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private init()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-direct {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f02020a

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f020230

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "REC"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f08000e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f02022f

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PAUSE_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f02022e

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "REC"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f08000e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_INDICATOR_TEXT_SIZE:I

    int-to-float v7, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_INDICATOR_TEXT_SIZE:I

    int-to-float v7, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f020009

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorStabilisationIcon:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TIMER_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorStabilisationIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "0K"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "0K"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201e8

    const v7, 0x7f0201e9

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "50M"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201e8

    const v7, 0x7f0201e9

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_REC_TIME_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v2, v2

    const v3, 0x7f0201f8

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0201fc

    const v5, 0x7f0201fe

    const v6, 0x7f0201fd

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0201ff

    const v5, 0x7f020201

    const v6, 0x7f020200

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200d6

    const v5, 0x7f0200d8

    const v6, 0x7f0200d7

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0201e4

    const v5, 0x7f0201e5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02033c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TIMER_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f0201f9

    const v5, 0x7f0201fb

    const v6, 0x7f0201fa

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f0201f6

    const v5, 0x7f0201f7

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f020202

    const v5, 0x7f020204

    const v6, 0x7f020203

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020208

    const v5, 0x7f020209

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    goto/16 :goto_1
.end method

.method private isNotElapsed1SEC()Z
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_c
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public doDimmingRecordingButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_1
    return-void
.end method

.method public doStop()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getRecordingStopAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doDimmingRecordingButtons(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    :cond_2
    return-void
.end method

.method public forceStop()V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    return-void
.end method

.method public getRecordingState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public getSnapShotButtonDimmed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCAFButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualView:Lcom/sec/android/app/camera/MenuBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualView:Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualView:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const-string v1, "TwGLCamcorderRecordingMenu"

    const-string v2, "Call onClick after Clear!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v5, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lt v2, v0, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setContinuousAF()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    if-ne v2, v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onRecordingDualModeSelected(I)V

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onRecordingDualModeSelected(I)V

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraSettingsInDual()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    if-ne v2, v0, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraModeForDualCamera(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualCameraSync()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/16 v2, 0xbba

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(II)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->setFlashOff()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraModeForDualCamera(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualCameraSync()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xca

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->STEP_NUM:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStep3()V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xca

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->STEP_NUM:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    if-ne v1, v5, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStep_complete()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doDimmingRecordingButtons(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onHideMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCameraKeyEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TwGLCamcorderRecordingMenu"

    const-string v2, "returning because the enter key of the keyboard was inputted in the video recording state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PAUSE_ICON_POS_X:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    return-void
.end method

.method public onRecordingDualModeSelected(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "TwGLCamcorderRecordingMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingDualModeSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualVisible()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setOrientationForDual()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualInvisible()V

    goto :goto_0
.end method

.method protected onShow()V
    .locals 10

    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doDimmingRecordingButtons(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->STEP_NUM:I

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_f

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-ne v0, v8, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_13

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_9
    :goto_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v8, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v9, :cond_c

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    :cond_e
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-ne v0, v8, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iput v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v8, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v4, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFastMotionSpeed()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_0
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    goto :goto_8

    :pswitch_1
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    goto :goto_8

    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    goto :goto_8

    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v9, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_2

    :cond_19
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v7, :cond_1c

    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_3

    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_3

    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pauseTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setRecordingState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    return-void
.end method

.method public showCAFButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 7

    const/16 v3, 0x12c

    const/16 v2, 0x28

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-eq v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getTotalStorage(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    const/16 v1, 0xe10

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stepSecond()V

    return-void

    :cond_3
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    if-le v0, v3, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualFHDRecordingMaxLimitTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    const-string v0, "05:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    if-le v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mUHDRecordingMaxLimitTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    const-string v0, "05:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualHDRecordingMaxLimitTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    const-string v0, "10:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    goto :goto_1
.end method

.method public stepSecond()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->handleRecordingTimerElapsed()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    rsub-int/lit8 v3, v0, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 13

    const-wide/16 v11, 0x0

    const/16 v10, 0x12

    const/4 v9, 0x1

    const-wide/16 v7, 0x400

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v0

    const-wide/16 v3, 0x64

    mul-long/2addr v3, p1

    div-long/2addr v3, v0

    long-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    cmp-long v3, p1, v0

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_2
    invoke-static {v9}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-eq v3, v9, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v10, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v3

    if-ge v3, v9, :cond_2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    div-long v5, p1, v7

    div-long/2addr v5, v7

    cmp-long v3, v5, v11

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    div-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "M"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "K"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v10, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v5

    const-wide/32 v7, 0x2080000

    add-long/2addr v5, v7

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    div-long v3, p1, v7

    div-long/2addr v3, v7

    cmp-long v3, v3, v11

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v7

    div-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    goto :goto_2

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public updateRecordingTime(I)V
    .locals 9

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    if-ne v0, p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    if-eq v0, v5, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    if-le v0, p1, :cond_8

    const-string v0, "TwGLCamcorderRecordingMenu"

    const-string v1, "wrong called more than once in fast motion"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    sub-int/2addr v0, p1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_a

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    sub-int/2addr v0, p1

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_b

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2
.end method
