.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$12;,
        Lcom/android/launcher2/Launcher$ActivityResultCallback;,
        Lcom/android/launcher2/Launcher$WidgetAddInfo;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$StateAnimatorProvider;,
        Lcom/android/launcher2/Launcher$HardwareKeys;
    }
.end annotation


# static fields
.field private static final ACTION_HOME_MODE:Ljava/lang/String; = "com.android.launcher.action.HOME_MODE_CHANGE"

.field private static final ACTION_HOME_RESTORE:Ljava/lang/String; = "com.android.launcher.action.ACTION_HOME_RESTORE"

.field private static final ACTION_STATUSBAR_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field private static final ACTION_STATUSBAR_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ADD_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "add.toast.popup.dismissed.key"

.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = false

.field public static CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z = false

.field public static CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z = false

.field public static CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_THEME_ENABLE:Z = false

.field public static CSCFEATURE_LAUNCHER_USM_EXISTS:Z = false

.field private static final DEBUGGABLE:Z

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT:Z = false

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT_TAG:Ljava/lang/String; = "Launcher.AddWidgetViaIntent"

.field static final DISABLE_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "disable.toast.popup.dismissed.key"

.field private static final EXTRA_HOME_VIEW_HIDDEN:Ljava/lang/String; = "extra_home_view_hidden"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final HELP_ACTIVITY_TYPE:Ljava/lang/String; = "help_activity_type"

.field public static final HELP_HUB_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.helphub.provider/help_page_status/"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final LAUNCHER_ACTION_ALL_APPS_FROM_MAGAGINE:Ljava/lang/String; = "com.android.launcher2.ALL_APPS_FROM_MAGAZINE"

.field private static final LAUNCHER_ACTION_IDLE:Ljava/lang/String; = "com.android.launcher2.IDLE"

.field private static final MORE_SERVICE_DOWNLOADABLE_APP_LIST_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.moreservices.moreservices"

.field private static final MORE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.moreservices"

.field public static final MOTION_DIALOG_ON_OFF_PREF:Ljava/lang/String; = "MotionDialogOnOff"

.field static final PREFERENCES:Ljava/lang/String; = "com.sec.android.app.launcher.prefs"

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final SAMSUNG_APPS_DOWNLOADABLE_APP_LIST_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadableapps.DownloadableAppsActivity"

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z = false

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field public static SHOW_ALL_APPS_TRANSITION_DURATION:J = 0x0L

.field private static final SYSTEMUI_TRANSPARENCY:Z = true

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field public static UseContextualPageFeature:Z = false

.field public static UseDisableTranslucencyFeature:Z = false

.field public static UseLauncherHighPriority:Z = false

.field public static UseQwertyKeypad:Z = false

.field static final VIBRATE_DURATION:I = 0x23

.field static final WIDGET_RESIZE_UPDATE_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field static final WIDGET_RESIZE_UPDATE_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field public static bSupportAirMove:Z

.field public static changeWallpaperStatus:I

.field public static isExitingFromHelp:Z

.field public static isExitingFromWallpaperActivity:Z

.field public static isHelpAppRunning:Z

.field public static isHomescreenRestoring:Z

.field public static isMotionDialogLaunching:Z

.field public static isSystemAppDisable:Z

.field private static launcher:Lcom/android/launcher2/Launcher;

.field private static mEasyStateForHelpApp:Z

.field public static mIsExpandStatusBar:Z

.field public static mNonDisableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageTobeDisabled:Ljava/lang/String;

.field private static mPendingIntent:Landroid/content/Intent;

.field public static mRemovableCustomerAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRemovablePreloadAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sHelpHubAvailable:Ljava/lang/Boolean;

.field private static sHwPopupMenuShowing:Z

.field public static sInComingIntentHelpHub:Landroid/content/Intent;

.field public static sIsEditFromHome:Z

.field public static sIsHeadlinesAppEnable:Z

.field private static sIsHomeEditMode:Z

.field private static sIsHomeRemoveMode:Z

.field public static sIsStopped:Z

.field static sMenuBgDarkenAmountNormal:F

.field private static sPopupMenuShowing:Z

.field public static sViewLayerPaint:Landroid/graphics/Paint;

.field public static sWhichTransitionEffect:I

.field public static wasWidgetsTabShown:Z


# instance fields
.field private isEnteredFromMagazine:Z

.field private mActivityCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher2/Launcher$ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityName:Landroid/content/ComponentName;

.field private mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

.field public mAttached:Z

.field private mAutoRestart:Z

.field private mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mConnected:Z

.field private mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

.field private mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

.field private mDarkenView:Landroid/view/View;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mExitingAllApps:Z

.field private mFactoryModeString:Ljava/lang/String;

.field private mGestureListenerRegistered:Z

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mHasMenuKey:Z

.field mHomeView:Lcom/android/launcher2/HomeView;

.field private mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

.field mInMenu:Z

.field private mIsDestroyed:Z

.field private mIsExternalHelpActivity:Z

.field private mIsFactoryMode:Z

.field private mMarketLabelName:Ljava/lang/CharSequence;

.field private mMenuButtonView:Landroid/view/View;

.field private mMenuView:Lcom/android/launcher2/MenuView;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

.field private mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

.field private mPrevOrientationHelp:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRemainSavedInstance:Z

.field private mRestoring:Z

.field private mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

.field private mShowEmptyPageMsg:Z

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

.field private mTransitionAnimator:Landroid/animation/Animator;

.field private mTransitioningToAllApps:Z

.field private mWidgetAddInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$WidgetAddInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-object v1, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    sput-boolean v3, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovableCustomerAppItems:Ljava/util/ArrayList;

    const-string v0, ""

    sput-object v0, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    sput-object v1, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z

    const-wide/16 v0, 0xe6

    sput-wide v0, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    sput-boolean v3, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseDisableTranslucencyFeature:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    sput-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_USM_EXISTS:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    sput v2, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/app/ActivityGroup;-><init>(Z)V

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    new-instance v0, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mConnected:Z

    sput-object p0, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private AllWidgetCount()I
    .locals 2

    new-instance v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private acceptFilter()Z
    .locals 2

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishShowAllApps()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .param p0    # Lcom/android/launcher2/Launcher;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Launcher;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->AllWidgetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return p0
.end method

.method private addNonDisableAppToList()V
    .locals 7

    const-string v0, "nondisableapps"

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    :try_start_0
    const-string v5, "nondisableapps"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v3, v4

    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_1
    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    sget-object v5, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private addRemovableCustomerAppToList()V
    .locals 14

    const/4 v13, 0x1

    const-string v0, "removablecustomerapps"

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc/default_removablecustomerapp_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    new-instance v2, Ljava/io/FileReader;

    const-string v9, "/system/csc/default_removablecustomerapp_list.xml"

    invoke-direct {v2, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :goto_0
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_1
    if-eq v5, v13, :cond_2

    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    sget-object v9, Lcom/android/launcher2/Launcher;->mRemovableCustomerAppItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    const-string v9, "removablecustomerapps"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v8

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v4

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    throw v9

    :catch_4
    move-exception v9

    goto :goto_2

    :catch_5
    move-exception v10

    goto :goto_6

    :catchall_1
    move-exception v9

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v4

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v1, v2

    goto :goto_3
.end method

.method private addRemovablePreloadAppToList()V
    .locals 14

    const/4 v13, 0x1

    const-string v0, "removablepreloadapps"

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc/default_removablepreloadapp_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    new-instance v2, Ljava/io/FileReader;

    const-string v9, "/system/csc/default_removablepreloadapp_list.xml"

    invoke-direct {v2, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :goto_0
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_1
    if-eq v5, v13, :cond_2

    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    sget-object v9, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    const-string v9, "removablepreloadapps"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v8

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v4

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    throw v9

    :catch_4
    move-exception v9

    goto :goto_2

    :catch_5
    move-exception v10

    goto :goto_6

    :catchall_1
    move-exception v9

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v4

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v1, v2

    goto :goto_3
.end method

.method private addToHelpMenuOption(Landroid/view/MenuItem;)V
    .locals 6
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isHelpAppAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stuck to help app because of indicated Easymode now   Error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private buildWidgetMap(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    new-instance v5, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/HashMap;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private exitWidgetResizeMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_0
    return-void
.end method

.method private fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V
    .locals 4
    .param p1    # Lcom/android/launcher2/HomeItem;
    .param p2    # Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .param p3    # [I

    const/4 v1, -0x1

    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    :goto_0
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    aget v0, p3, v0

    :goto_1
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    const-wide/16 v2, -0x64

    iput-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private finishExitAllApps()V
    .locals 6

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onFinishExitAllApps()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_0

    const-string v3, "create_folder"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    new-instance v1, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    check-cast v1, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-virtual {v1}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step3()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private finishShowAllApps()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/launcher2/Launcher;
    .locals 3

    sget-object v1, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    if-nez v1, :cond_0

    const-string v1, "Launcher"

    const-string v2, "Please Call me after onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    sget-object v1, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    return-object v1
.end method

.method private getLaunchIntentForHelpHub()Landroid/content/Intent;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "helphub:section"

    const-string v5, "homescreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    sget-boolean v4, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher"

    const-string v5, "Unable to launch  intent= com.samsung.helphub.HELP"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x258

    if-ge v4, v5, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v4, "com.samsung.helphub"

    const-string v5, "com.samsung.helphub.HelpHubSecondDepthActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher"

    const-string v5, "Unable to launch HelpHub Activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    sget-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 11

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const-string v8, "KOR"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "ro.product.model"

    const-string v9, "Unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "SHW-M250S"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SHW-M250K"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    const/4 v4, 0x0

    const-string v8, "ril.DS"

    const-string v9, "Default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_1

    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFactorySim() imsi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_8

    const-string v8, "true"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    const-string v8, "Launcher"

    const-string v9, "isFactorySim() : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v7

    :cond_3
    const-string v8, "SHW-M250L"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v2, "357858010034783"

    const-string v3, "004400152020002"

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_4

    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFactorySim() imsi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v5, :cond_8

    const-string v8, "357858010034783"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "004400152020002"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_5
    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    const-string v8, "Launcher"

    const-string v9, "isFactorySim() : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v1, "999999999999999"

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_7

    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFactorySim() imsi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v5, :cond_8

    const-string v8, "999999999999999"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    const-string v8, "Launcher"

    const-string v9, "isFactorySim() : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-boolean v7, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v7, :cond_9

    const-string v7, "Launcher"

    const-string v8, "isFactorySim() : false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method static isHomeEditMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return v0
.end method

.method static isHomeRemoveMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    return v0
.end method

.method private isMotionSettingOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isOptionMenuShowing()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPopupMenuShowing()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return v0
.end method

.method private static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 8
    .param p1    # Lcom/android/launcher2/Launcher$WidgetAddInfo;

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Lcom/android/launcher2/HomePendingWidget;

    invoke-direct {v2, v3, v7, v7}, Lcom/android/launcher2/HomePendingWidget;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForAppWidget(Landroid/appwidget/AppWidgetProviderInfo;II[I)[I

    move-result-object v1

    invoke-direct {p0, v2, p1, v1}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private processAsSamsungSurfaceWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 7
    .param p1    # Lcom/android/launcher2/Launcher$WidgetAddInfo;

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    iget-object v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    new-instance v1, Lcom/android/launcher2/HomePendingSurfaceWidget;

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomePendingSurfaceWidget;-><init>(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSurfaceWidget(II[I)[I

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeView;->addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private processAsSamsungWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 9
    .param p1    # Lcom/android/launcher2/Launcher$WidgetAddInfo;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-object v1, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v7, Lcom/android/launcher2/HomePendingSamsungWidget;

    invoke-direct {v7, v8}, Lcom/android/launcher2/HomePendingSamsungWidget;-><init>(Lcom/android/launcher2/SamsungWidgetProviderInfo;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v1, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v2, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    iget v3, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    move-result-object v6

    invoke-direct {p0, v7, p1, v6}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/HomeView;->addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1    # Ljava/lang/String;

    const-string v6, ""

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v6, :cond_7

    const-string v6, ""

    :goto_1
    return-object v6

    :catch_0
    move-exception v2

    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v5

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_4
    const-string v7, "Launcher"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_3
    :try_start_6
    const-string v7, "Launcher"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_5
    throw v7

    :catch_5
    move-exception v2

    const-string v8, "Launcher"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v4, v5

    move-object v0, v1

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v4, v5

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_9
    move-exception v3

    move-object v4, v5

    move-object v0, v1

    goto :goto_2
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private releaseShadows()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "releaseShadows called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->releaseShadows()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->releaseShadows()V

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->releaseShadows()V

    return-void
.end method

.method public static requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/content/Context;

    move-object v0, p1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0e0052

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00f7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v4, v0}, Lcom/android/launcher2/Launcher$10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static setHomeEditMode(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return-void
.end method

.method static setHomeRemoveMode(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMarketLabel()V
    .locals 6

    const v5, 0x7f0e002d

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    :cond_2
    throw v2
.end method

.method private setupOptionsMenu(Landroid/view/Menu;)Z
    .locals 34
    .param p1    # Landroid/view/Menu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v32

    if-nez v32, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/16 v32, 0x0

    :goto_0
    return v32

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0e0031

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v32, 0x7f0800dc

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v32, 0x7f0800dd

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v32, 0x7f0800e4

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const v32, 0x7f0800e7

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const v32, 0x7f0800e6

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v32, 0x7f0800e5

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const v32, 0x7f0800e8

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const v32, 0x7f0800e9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const v32, 0x7f0800eb

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    const v32, 0x7f0800df

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v32, 0x7f0800de

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v32, 0x7f0800e0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v32, 0x7f0800e3

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v32, 0x7f0800ed

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const v32, 0x7f0800e2

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v32, 0x7f0800ef

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    const v32, 0x7f0800f0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v32, 0x7f0800ee

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    const v32, 0x7f0800ea

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    const v32, 0x7f0800e1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const v32, 0x7f0800f1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    sget-boolean v32, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/launcher2/HomeView;->setHomeEditItem(Landroid/view/MenuItem;)V

    :cond_2
    const v32, 0x7f0800ec

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    sget-object v32, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v6

    const/16 v32, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v32

    if-eqz v32, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string v33, "com.sec.feature.findo"

    invoke-virtual/range {v32 .. v33}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    :goto_1
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-boolean v32, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v32, :cond_3

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v32

    if-nez v32, :cond_b

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v32, 0x7f0e004f

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    sget-boolean v32, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomeView;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v32

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v32

    if-eqz v32, :cond_d

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-boolean v32, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v32, :cond_4

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v32

    if-nez v32, :cond_c

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v32, 0x7f0e004f

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/Launcher;->addToHelpMenuOption(Landroid/view/MenuItem;)V

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-boolean v32, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_USM_EXISTS:Z

    if-eqz v32, :cond_5

    const/16 v32, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    sget-boolean v32, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v32, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v32

    const-string v33, "CscFeature_Launcher_DisableGoogleOption"

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    const/16 v32, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v32, v0

    const-string v33, "com.android.vending"

    invoke-virtual/range {v32 .. v33}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v32, v0

    const-string v33, "com.google.android.finsky"

    invoke-virtual/range {v32 .. v33}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_9

    :cond_8
    const/16 v32, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    const/16 v32, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_b
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_c
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_d
    sget-boolean v32, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v32, :cond_4

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_e
    sget-boolean v32, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v32, :cond_4

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v32

    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v32

    if-eqz v32, :cond_12

    sget-boolean v32, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-nez v32, :cond_10

    const/16 v32, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_10
    const/16 v32, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v30

    if-eqz v30, :cond_11

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v32

    if-eqz v32, :cond_11

    const/16 v32, 0x1

    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_11
    const/16 v32, 0x0

    goto :goto_5

    :cond_12
    sget-object v32, Lcom/android/launcher2/Launcher$12;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    move-result v33

    aget v32, v32, v33

    packed-switch v32, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget-boolean v32, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-nez v32, :cond_13

    const/16 v32, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_13
    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v32, Lcom/android/launcher2/Launcher$12;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    move-result v33

    aget v32, v32, v33

    packed-switch v32, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v32

    if-eqz v32, :cond_14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v32

    if-nez v32, :cond_14

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_14
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v32, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_15

    const/16 v27, 0x1

    :goto_6
    move/from16 v0, v27

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/Launcher;->addToHelpMenuOption(Landroid/view/MenuItem;)V

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v6, :cond_16

    if-eqz v27, :cond_16

    const/16 v32, 0x1

    :goto_7
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v32, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v26

    if-eqz v26, :cond_18

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_17

    const/16 v32, 0x1

    :goto_8
    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_9
    const/16 v32, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v32, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuAppModel;->hasHiddenApps()Z

    move-result v32

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-boolean v32, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v32, :cond_6

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v32, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/MenuAppModel;->isDisableAppListEmpty()Z

    move-result v32

    if-nez v32, :cond_19

    const/16 v32, 0x1

    :goto_a
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_15
    const/16 v27, 0x0

    goto/16 :goto_6

    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_7

    :cond_17
    const/16 v32, 0x0

    goto :goto_8

    :cond_18
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_9

    :cond_19
    const/16 v32, 0x0

    goto :goto_a

    :pswitch_2
    const/16 v32, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static startDrag(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;F)Z
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # F

    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;F)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method private static final startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z
    .locals 26
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/content/ClipData;
    .param p2    # Lcom/android/launcher2/ShadowBuilder;
    .param p3    # Lcom/android/launcher2/DragState;
    .param p4    # I

    const-string v5, "Launcher"

    const-string v6, "Drag started"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-gez v5, :cond_0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v25

    iput v5, v0, Landroid/graphics/Point;->x:I

    :cond_0
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v5, :cond_1

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_2

    :cond_1
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_3

    :cond_2
    const-string v5, "Launcher"

    const-string v6, "Drag shadow touch point must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_3
    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_5

    :cond_4
    const-string v5, "Launcher"

    const-string v6, "Drag shadow dimensions must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    :try_start_0
    const-class v5, Landroid/view/View;

    const-string v6, "mAttachInfo"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mWindow"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindow;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mSession"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowSession;

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v24

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher2/UpdateableShadowBuilder;->setSurface(Landroid/view/Surface;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/UpdateableShadowBuilder;->draw()V

    const-class v5, Landroid/view/View;

    const-string v6, "getViewRootImpl"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/ViewRootImpl;

    const-class v5, Landroid/view/ViewRootImpl;

    const-string v6, "setLocalDragState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v5

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v5, "Launcher"

    const-string v6, "performDrag() return false."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_6

    const/16 v21, 0x0

    new-instance v21, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v21, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-static {v5}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Object;

    aput-object v5, v6, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    if-eqz v22, :cond_9

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->onDragStartedSuccessfully()V

    :cond_9
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start Drag result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v22

    goto/16 :goto_0

    :catch_0
    move-exception v18

    sget-boolean v5, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v5, :cond_a

    const-string v5, "Launcher"

    const-string v6, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_1
.end method

.method public static startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z
    .locals 4
    .param p0    # Landroid/view/View;
    .param p1    # Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/DragState;

    invoke-direct {v2, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z

    move-result v0

    return v0
.end method

.method private tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .param p1    # Landroid/content/Intent;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "com.sec.launcher.action.INSTALL_WIDGET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v7, "com.sec.launcher.intent.extra.COMPONENT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    new-instance v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/android/launcher2/Launcher$WidgetAddInfo;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v2, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    const-string v7, "com.sec.launcher.intent.extra.DUPLICATE"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    const-string v7, "com.sec.launcher.intent.extra.sizeX"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v6, :cond_1

    move v3, v5

    :cond_1
    iput v3, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    const-string v7, "com.sec.launcher.intent.extra.sizeY"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v6, :cond_3

    :goto_0
    iput v5, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v5, v6

    :goto_1
    return v5

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public IsMagazineEnabled()Z
    .locals 7

    const-string v3, "sstream.app"

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "sstream.app"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "sstream.app"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public RestoreHomeScreen()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    sput-boolean v9, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    if-ne v4, v8, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v4

    :cond_0
    sub-int v2, v4, v3

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->addPage()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    mul-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v5

    if-eq v5, v8, :cond_3

    if-ge v5, v4, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v7, p0, v0}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/LauncherApplication;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addAnyPendingWidgetsToWorkspace()V
    .locals 11

    const/4 v10, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->buildWidgetMap(Ljava/util/HashMap;)V

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    iget-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    if-nez v7, :cond_1

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    const v7, 0x7f0e001e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsSamsungWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsSamsungSurfaceWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    :cond_2
    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    :cond_3
    if-eqz v4, :cond_0

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindAppsLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->appModelLoaded()V

    return-void
.end method

.method public bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuView;->appBadgeUpdated(Ljava/util/List;)V

    :cond_1
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageManager;->updateBadgeCounts()V

    :cond_2
    return-void
.end method

.method public bindClearPostBindList()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageManager;->clearPostBindList()V

    return-void
.end method

.method public bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    return-void
.end method

.method public bindHomeAppWidget_CP(Ljava/util/List;I)V
    .locals 1
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeView;->bindAppWidget_CP(Ljava/util/List;I)V

    return-void
.end method

.method public bindHomeBegin()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->startBinding()V

    return-void
.end method

.method public bindHomeEnd()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "homescreen:guide_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bindHomeFolders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindFolders(Ljava/util/Map;)V

    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    const-string v10, "com.sec.android.app.launcher.prefs"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeItemsRemoved"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10, p1}, Lcom/android/launcher2/HomeView;->bindHomeItemsRemoved(Ljava/util/List;)V

    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    return-void
.end method

.method public bindHomeSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V

    return-void
.end method

.method public bindHomeSamsungWidget_CP(Ljava/util/List;I)V
    .locals 1
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungWidgetItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeView;->bindSamsungWidget_CP(Ljava/util/List;I)V

    return-void
.end method

.method public bindHomeShortcuts(Ljava/util/List;II)V
    .locals 1
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/HomeView;->bindItems(Ljava/util/List;II)V

    return-void
.end method

.method public bindHomeShortcuts_CP(Ljava/util/List;I)V
    .locals 1
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeView;->bindItems_CP(Ljava/util/List;I)V

    return-void
.end method

.method public bindHomeSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V

    return-void
.end method

.method public bindHomeSurfaceWidget_CP(Ljava/util/List;I)V
    .locals 1
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeView;->bindSurfaceWidget_CP(Ljava/util/List;I)V

    return-void
.end method

.method public bindHotseatItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v1}, Lcom/android/launcher2/ContextualPageManager;->getCurCPType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ContextualPageManager;->checkAndBindHotseatCPItems(I)Z

    :cond_0
    return-void
.end method

.method public bindHotseatItemsReload_CP()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageManager;->reloadAwareHotseatItems()V

    return-void
.end method

.method public bindModeChange()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bindPackagesChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->forceReload()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuView;->packagesChanged(Z)V

    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    return-void
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindWidgetsAfterConfigChange()V

    :cond_0
    return-void
.end method

.method public callDisableDialog(Lcom/android/launcher2/BaseItem;)V
    .locals 6
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->shouldDisablePopupRepeat()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->shouldDisablePopupRepeat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkFactoryMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePopupMenu()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    return-void
.end method

.method public createPopupMenu(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find anchor for menu button."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/popup/PopupMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    new-instance v1, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/PopupMenu;->setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1    # Landroid/view/KeyEvent;

    const v8, 0x7f0800af

    const v7, 0x7f080099

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_c

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    :cond_2
    :goto_1
    return v4

    :sswitch_0
    sget v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    if-eq v5, v4, :cond_3

    sget v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    :cond_3
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_4

    const-string v4, "CHN"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    move v4, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :sswitch_1
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_2

    move v4, v0

    goto :goto_1

    :sswitch_2
    move v4, v0

    goto :goto_1

    :sswitch_3
    const-string v5, "debug.launcher2.dumpstate"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->dumpState()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    :cond_a
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/PagedViewWidget;

    if-nez v5, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v5, :cond_b

    move v0, v4

    :cond_b
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v5, v6, :cond_1

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v6, 0x7f0800bc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    :sswitch_6
    move v4, v0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_7
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_2

    move v4, v0

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :sswitch_9
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_d

    move v4, v0

    goto/16 :goto_1

    :cond_d
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_e

    move v4, v0

    goto/16 :goto_1

    :cond_e
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_f

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_f

    move v4, v0

    goto/16 :goto_1

    :cond_f
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_10

    move v4, v0

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_13

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_12

    :cond_11
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    :cond_12
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    sput-boolean v4, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto/16 :goto_1

    :cond_13
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_14

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto/16 :goto_1

    :cond_14
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v8, :cond_12

    :cond_15
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_2

    :cond_16
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_2

    move v4, v0

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_0
        0x19 -> :sswitch_3
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
        0xe2 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_7
        0x13 -> :sswitch_a
        0x14 -> :sswitch_a
        0x15 -> :sswitch_a
        0x16 -> :sswitch_a
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
        0x52 -> :sswitch_9
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_1

    const v2, 0x7f0e0032

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v2, 0x7f0e00eb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0e0003

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const v2, 0x7f0e0017

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public exitAllApps()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    return-void
.end method

.method public exitAllApps(ZZ)V
    .locals 14
    .param p1    # Z
    .param p2    # Z

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v10

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->end()V

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v10, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v11, 0xc8

    invoke-virtual {v4, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->onExitAllApps()V

    sget-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v11, "add_widgets"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    :cond_5
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    if-eqz v8, :cond_b

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v10

    if-nez v10, :cond_b

    :cond_7
    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    if-nez p1, :cond_8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->resumeMagazineCling()V

    :cond_8
    :goto_1
    if-eqz p2, :cond_d

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/high16 v11, 0x3f800000

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/high16 v11, 0x3f800000

    invoke-virtual {v10, v11}, Landroid/view/View;->setScaleX(F)V

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/high16 v11, 0x3f800000

    invoke-virtual {v10, v11}, Landroid/view/View;->setScaleY(F)V

    if-eqz v8, :cond_a

    const/4 v1, 0x0

    sget-boolean v10, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v10}, Lcom/android/launcher2/ContextualPageManager;->isCurCP()Z

    move-result v10

    if-eqz v10, :cond_c

    sget v1, Lcom/android/launcher2/ContextualPageManager;->CP_DARKEN_AMOUNT:F

    :cond_9
    :goto_2
    invoke-virtual {v8, v1}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    :cond_a
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_1

    :cond_c
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0006

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    invoke-interface {v5, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_e
    if-eqz v8, :cond_f

    if-eqz p1, :cond_10

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->onFadeStart()V

    :cond_f
    :goto_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v10, p0, p1}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;Z)V

    invoke-virtual {v7, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    goto/16 :goto_0

    :cond_10
    const v9, 0x7f05000a

    sget-boolean v10, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v10}, Lcom/android/launcher2/ContextualPageManager;->isCurCP()Z

    move-result v10

    if-eqz v10, :cond_11

    const v9, 0x7f05000b

    :cond_11
    :goto_5
    invoke-static {p0, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_11

    const v9, 0x7f05000c

    goto :goto_5
.end method

.method public exitHelp(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    :cond_0
    sput-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "add_widgets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v6, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v3, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    sput-boolean v5, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "homescreen:guide_mode"

    const-string v4, "onBackPressed"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "currentGmode"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getLaunchIntentForHelpHub()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "change_wallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sput-boolean v6, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v3, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    sput-boolean v5, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "homescreen:guide_mode"

    const-string v4, "onBackPressed"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "currentGmode"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getLaunchIntentForHelpHub()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "Launcher - exitHelp"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    :cond_4
    sput-boolean v5, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    :cond_5
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->removeWrongActionDialog()V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v3, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    sput-boolean v5, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    sget-boolean v3, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    :cond_6
    sput-boolean v5, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    sput-boolean v5, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    sput-boolean v6, Lcom/android/launcher2/AddToHomescreenDialogFragment;->setWallpaperSelected:Z

    sput-boolean v6, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    sget-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    :cond_7
    sget-object v3, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    if-eq v3, v4, :cond_8

    sget-object v3, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_8
    iget v3, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PagedView;->showPageIndicator(Z)V

    sput-boolean v6, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "homescreen:guide_mode"

    const-string v4, "onBackPressed"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "currentGmode"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getLaunchIntentForHelpHub()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public finishWallpaperGuide(Z)V
    .locals 4
    .param p1    # Z

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const v1, 0x7f0e00c2

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    goto :goto_0
.end method

.method public getAnimationLayer()Lcom/android/launcher2/AnimationLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public getContextualPageReceiver()Lcom/android/launcher2/ContextualPageReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    return-object v0
.end method

.method public getHomeView()Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    return-object v0
.end method

.method public getMenuView()Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public getQuickViewWorkspaceOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getShowEmptyPageMessagePref()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    return v0
.end method

.method public getSurfaceWidgetPackageManager()Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    return-object v0
.end method

.method public getTransitionToAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public isAddToScreenDialogShowing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    return v0
.end method

.method public isAirMoveOninSettings()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "air_motion_item_move"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    const-string v3, "air_motion_engine"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isDialogChecked()Z
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "add.toast.popup.dismissed.key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isEmptyPage()Z
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutChildren;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isExitingAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    return v0
.end method

.method public isHapticFeedbackExtraOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_extra"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isHelpAppAvailable()Z
    .locals 5

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isHelpHubAvailable()Z
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "displayed"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isKeyStringBlocked()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "KOR"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ro.product.model"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "SHV-E110"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E160"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "/efs/imei/keystr"

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isLauncherDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method public isMotionDialogAvailable()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MotionDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    goto :goto_0
.end method

.method public isPageEdit()Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPageReorderingEdit()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->isSettingVisible()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    return v0
.end method

.method public isTransitioningRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitioningToShowAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuWidgetsUpdated(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0800e7

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x6f

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->finishWallpaperGuide(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher$ActivityResultCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher2/Launcher$ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "Launcher"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->onAttachedToWindow()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.launcher.action.ACTION_HOME_RESTORE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v1, :cond_0

    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    sget-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->handleResizeWidget()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "add_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startMagazineApp(Z)V

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onBackPressed()Z

    goto :goto_0
.end method

.method public onClickAppMarketButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f08009a
        :pswitch_0
    .end packed-switch
.end method

.method public onClickDownloadedButton(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v1, 0x20

    const v2, 0x7f0e0032

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->onOptionSelectedDownload()V

    return-void
.end method

.method public onClickPopupMenuButton(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    iget-boolean v0, v0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto :goto_0
.end method

.method public onClickonlineHelp()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:section"

    const-string v4, "homescreen"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:appid"

    const-string v4, "home_screen"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onClickstartDownloadableApps()V
    .locals 7

    const v6, 0x7f0e0002

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.sec.android.app.moreservices"

    const-string v4, "com.sec.android.app.moreservices.moreservices"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const v3, 0x4000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v3, "com.sec.android.app.samsungapps"

    const-string v4, "com.sec.android.app.samsungapps.downloadableapps.DownloadableAppsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. tag=samsungapps downloadable page intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "or use the exported attribute for this activity. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "samsungapps downloadable page"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1    # Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)V

    const-string v19, "Launcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate. savedInstanceState: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez p1, :cond_15

    const-string v18, "null"

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", Launcher: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_16

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v18, 0x7f0c0000

    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v18

    sput v18, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-static {v13}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    sget-boolean v18, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v18, :cond_0

    const/16 v18, -0x4

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v18

    if-nez v18, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v18

    if-nez v18, :cond_19

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "device_provisioned"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v18, "Launcher"

    const-string v19, "Set device_provisioned: 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "device_provisioned"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const-string v18, "Launcher"

    const-string v19, "Confirm device_provisioned: 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "user_setup_complete"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v18, "Launcher"

    const-string v19, "Set user_setup_complete: 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "user_setup_complete"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const-string v18, "Launcher"

    const-string v19, "Confirm user_setup_complete: 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_HomeScreenEditMode"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_DisableTiltEffect"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_ReplaceHotseatAreaInEditMode"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_DisableHelpUI"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_DynamicCSCFeature"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_DisableTranslucency"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->UseDisableTranslucencyFeature:Z

    :cond_8
    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DYNAMICCSCFEATURE="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    if-eqz v18, :cond_9

    if-nez p1, :cond_9

    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.CSC_UPDATE_LAUNCHER_READY"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const-string v18, "DYNAMIC_CSC"

    const-string v19, "Launcher Ready intent BroadCasted"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Setting_EnableUSM"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_USM_EXISTS:Z

    :cond_a
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/Launcher;->SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z

    sget-boolean v18, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v18, :cond_b

    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HOMESCREENEDITMODE="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " REPLACEHOTSEATAREAINEDITMODE="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    const/16 v18, 0x1

    :goto_4
    sput-boolean v18, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PkgResCache;->clear()V

    :cond_c
    const-string v18, "com.sec.android.app.launcher.prefs"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v18, "SHOW_EMPTY_PAGE_MSG"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v18

    if-eqz v18, :cond_1b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v18

    if-nez v18, :cond_1b

    const-string v18, "pref_my_magazine"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    :goto_5
    const-string v18, "pref_list_transition_effect"

    const-string v19, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sput v18, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    const v18, 0x7f030030

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    sget-object v18, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    sget-object v18, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->loadIfNeeded(Landroid/content/Context;)V

    const v18, 0x7f08006b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/HomeView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const v18, 0x7f0800a7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/MenuView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v18, 0x7f080080

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    const v18, 0x7f0e002c

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v18, v0

    const v19, 0x7f0800af

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    new-instance v18, Lcom/android/launcher2/Launcher$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;Landroid/widget/Toast;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v14

    if-eqz p1, :cond_1d

    const-string v18, "extra_home_view_hidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mInMenu:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    :goto_6
    invoke-virtual {v14}, Landroid/app/FragmentTransaction;->commit()I

    sget v18, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherModel;->startLoader()V

    :cond_d
    new-instance v7, Landroid/content/IntentFilter;

    const-string v18, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/BadgeCountReceiver;->initialize(Landroid/content/Context;)Lcom/android/launcher2/BadgeCountReceiver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    sget-boolean v18, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v18, :cond_e

    new-instance v18, Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/ContextualPageManager;-><init>(Lcom/android/launcher2/Launcher;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/HomeView;->setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/QuickViewWorkspace;->setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/ContextualPageManager;->initContextualPage(Lcom/android/launcher2/HomeView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher2/ContextualPageReceiver;->initialize(Landroid/content/Context;Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/ContextualPageReceiver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    :cond_e
    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "android.intent.category.APP_MARKET"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    :cond_f
    const v18, 0x7f08007f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setIndicatorTransparency()V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    sget-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v18, :cond_1e

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    :goto_7
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v18, v0

    const/16 v19, 0x258

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1f

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    sget-boolean v18, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v18, :cond_10

    new-instance v18, Lcom/samsung/android/service/gesture/GestureManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    :cond_10
    sget-boolean v18, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    :cond_11
    sget-boolean v18, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v18, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addNonDisableAppToList()V

    :cond_12
    sget v18, Lcom/android/launcher2/LauncherApplication;->RemovablePreloadEnabled:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovablePreloadAppToList()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovableCustomerAppToList()V

    :cond_13
    const-string v18, "enterprise_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    :cond_14
    new-instance v18, Lcom/google/android/hotword/client/HotwordServiceClient;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    return-void

    :cond_15
    const-string v18, "not null"

    goto/16 :goto_0

    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_17
    :try_start_2
    const-string v18, "Launcher"

    const-string v19, "database error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error Setting device_provisioned: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_18
    :try_start_3
    const-string v18, "Launcher"

    const-string v19, "database error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v6

    const-string v18, "Launcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error Setting user_setup_complete: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_19
    const-string v18, "Launcher"

    const-string v19, "FactoryMode"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_1b
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_1e
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    goto/16 :goto_7

    :cond_1f
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->onDestroy()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy, Launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    invoke-static {}, Lcom/android/launcher2/Utilities;->onDestroy()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v2, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    :cond_2
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v2}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    invoke-virtual {v2}, Lcom/android/launcher2/BadgeCountReceiver;->unregister()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageReceiver;->unregister()V

    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    if-eqz v2, :cond_4

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowGen;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    return-void
.end method

.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 5
    .param p1    # Lcom/samsung/android/service/gesture/GestureEvent;

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-ne v1, v3, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_2

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher2/Workspace;->moveToLeftScreen(ZZ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_4

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher2/Workspace;->moveToLeftScreen(ZZ)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getTabManager()Lcom/android/launcher2/tabs/TabManager;

    move-result-object v1

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-ne v1, v3, :cond_7

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_6

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher2/SmoothPagedView;->scrollToLeft(ZZ)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_8

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher2/SmoothPagedView;->scrollToLeft(ZZ)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-lez v7, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v9, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    const/4 v9, 0x7

    if-lt p1, v9, :cond_5

    const/16 v9, 0x12

    if-gt p1, v9, :cond_5

    const/4 v6, 0x0

    const/4 v9, 0x7

    if-lt p1, v9, :cond_3

    const/16 v9, 0x10

    if-gt p1, v9, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    const-string v9, "CHN"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "firstKeycode"

    invoke-virtual {v6, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string v9, "isKeyTone"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    :cond_1
    :goto_2
    return v3

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/16 v9, 0x12

    if-ne p1, v9, :cond_4

    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "isPoundKey"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :cond_5
    const/16 v9, 0x1b

    if-ne p1, v9, :cond_8

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x4000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_3
    const/16 v9, 0xe1

    if-ne p1, v9, :cond_7

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_7
    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v5, :cond_9

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v10, v11, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v3

    goto :goto_2

    :cond_8
    const/16 v9, 0x43

    if-ne p1, v9, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    if-eqz v8, :cond_6

    sget-boolean v9, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v9, :cond_6

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_3

    :cond_9
    const/16 v9, 0x52

    if-ne p1, v9, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    sput-object p1, Lcom/android/launcher2/Launcher;->sInComingIntentHelpHub:Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {p0, p1, v11}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v9

    iget-boolean v11, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-nez v11, :cond_1

    sput-object p1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-boolean v11, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v11, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_a

    const-string v11, "homescreen:guide_mode"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v11

    iput v11, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    const-string v11, "help_activity_type"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "ExternalHelpActivity"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    :cond_3
    invoke-static {p0, p1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;Z)V

    :cond_4
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->dismissMagazineCling()V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v11, v11, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    invoke-static {v2, v11}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;Z)V

    :cond_6
    invoke-static {v2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_7
    sget-boolean v11, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v11, :cond_0

    if-eqz v6, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11, v9}, Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z

    :cond_8
    if-nez v9, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v11, v6}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x400000

    and-int/2addr v11, v12

    const/high16 v12, 0x400000

    if-eq v11, v12, :cond_10

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x200000

    and-int/2addr v11, v12

    const/high16 v12, 0x200000

    if-ne v11, v12, :cond_10

    const-string v11, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-nez v9, :cond_c

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Lcom/android/launcher2/MenuView;->onHomePressed(Z)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "streetlife"

    const-string v12, "onNewIntent exitAllApps"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    :cond_b
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    if-eqz v11, :cond_5

    const-string v11, "input_method"

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_2

    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    :cond_d
    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v11, v12, :cond_b

    :cond_e
    if-nez v6, :cond_b

    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v9, :cond_f

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    goto :goto_6

    :cond_10
    const-string v11, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "com.android.launcher2.IDLE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    goto/16 :goto_2

    :cond_11
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto/16 :goto_2

    :cond_12
    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v11

    if-nez v11, :cond_13

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    :cond_13
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    goto/16 :goto_2

    :cond_14
    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    goto/16 :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 19
    .param p1    # Landroid/view/MenuItem;

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->onClickstartDownloadableApps()V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedSearch()V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedUninstall()V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedDownload()V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->chooseViewType()V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_b
    const-string v3, "search"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_d
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto :goto_1

    :pswitch_e
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10200000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->onClickonlineHelp()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v7, -0x66

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static/range {v3 .. v12}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2
    const-wide/16 v7, -0x64

    goto :goto_2

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->shouldToastRepeat()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->createAndShow(Landroid/app/FragmentManager;)V

    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e001f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_13
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.app.galaxyfinder"

    const-string v4, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v13, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.launcher"

    const-string v4, "com.sec.android.app.launcher.Launcher"

    invoke-direct {v13, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "componentname"

    invoke-virtual {v13}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "callername"

    const/4 v4, 0x2

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_14
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_USM_EXISTS:Z

    if-eqz v3, :cond_4

    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10200000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.USM_HOME"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_15
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v3, :cond_5

    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.themechooser"

    const-string v4, "com.sec.android.app.themechooser.ThemeListActivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800dc
        :pswitch_1
        :pswitch_2
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_15
        :pswitch_d
        :pswitch_13
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_14
        :pswitch_e
        :pswitch_f
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    return-void
.end method

.method public onPause()V
    .locals 4

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onPause()V

    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->pauseSensor()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eq v5, v7, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    if-eq v5, v7, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    :cond_4
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_0

    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    :cond_0
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume, Launcher: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kids_home_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->onResume()V

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    invoke-static {p0}, Lcom/android/launcher2/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherModel;->startLoader()V

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.launcher.action.HOME_MODE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "currentMode"

    const-string v7, "twlauncher"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v6, :cond_7

    const-string v6, "com.android.launcher2.ALL_APPS_FROM_MAGAZINE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_0
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    const-string v4, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/ContextualPageManager;->getHasPostWork()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/ContextualPageManager;->setHasPostWork(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v4, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    sput-boolean v5, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    sget-object v4, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v4}, Lcom/sec/dtl/launcher/Talk;->onResume()V

    sget-boolean v4, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v4, :cond_6

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resumed Orientation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resumed small width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resumed density : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->resumeSensor()V

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->removeHoverScrollHandler()V

    return-void

    :cond_7
    move v4, v5

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v1, "extra_home_view_hidden"

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    const v0, 0x7f040003

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2
.end method

.method public onServiceConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mConnected:Z

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mConnected:Z

    return-void
.end method

.method protected onStart()V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-nez v1, :cond_1

    const-string v1, "resize_widgets"

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->removeWrongActionDialog()V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onStop()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v1, :cond_3

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_3
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1    # I

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory. Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    :cond_0
    return-void
.end method

.method public registerForAirMotionGestureListner()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mConnected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_item_move"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    :cond_0
    return-void
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restorePopupMenu()Z
    .locals 4

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v3, 0x7f0800af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public saveToastPopup(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "add.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveToastPopupForDisableDialog(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setContextualPageReceiver(Lcom/android/launcher2/ContextualPageReceiver;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/ContextualPageReceiver;

    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    return-void
.end method

.method public setEnableHeadlines(Z)V
    .locals 0
    .param p1    # Z

    sput-boolean p1, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    return-void
.end method

.method public setEnableHotWord(Z)V
    .locals 1
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    return-void
.end method

.method public setEnableMenuButton(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowEmptyPageMessagePref(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    return-void
.end method

.method setSystemUiTransparency(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p1, v5, :cond_2

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v5}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Launcher"

    const-string v3, "setSystemUiTransparency.SettingNotFoundException : set as TRUE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v4}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v4}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    goto :goto_0
.end method

.method public setTransitionToAllApps(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return-void
.end method

.method public setWhichTransitionEffect(I)V
    .locals 4
    .param p1    # I

    sput p1, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    :goto_0
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting default transition effect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->setDefaultTransitionEffect(Lcom/android/launcher2/PagedView$TransitionEffect;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public shouldDisablePopupRepeat()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldToastRepeat()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "add.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public showAllApps()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->updateRunning()V

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->closeFolder()V

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->onPreShowAllApps()V

    sget-boolean v8, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->onShowAllApps()V

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->cancel()V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    invoke-interface {v6, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectShowAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    sput-boolean v11, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v8, v9, :cond_5

    const v8, 0x7f050007

    invoke-static {p0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    sget-wide v2, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    iget-boolean v8, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    if-eqz v8, :cond_6

    const-wide/16 v2, 0x0

    :cond_6
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v7, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "view_all_apps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v9, 0x3e8

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected showMotionDialog()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v6, "enabled_accessibility_services"

    invoke-static {v1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "accessibility_enabled"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    if-eqz v3, :cond_0

    const-string v6, "(?i).*talkback.*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isMotionDialogAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->unRegisterAirMotionGestureListner()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/MotionDialogOffFragment;->createAndShow(Landroid/app/FragmentManager;)V

    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/MotionDialogOnFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # Lcom/android/launcher2/Launcher$ActivityResultCallback;

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)Z
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroid/content/Intent;
    .param p2    # Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 15
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Intent;
    .param p3    # Ljava/lang/Object;

    const/high16 v11, 0x10000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v11, 0xc

    invoke-direct {v1, p0, v11}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/os/DVFSHelper;->onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    sget-boolean v11, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v11, :cond_1

    const-string v11, "Launcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "shortcut extras:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v11, "shortcutIntent"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v11, 0x0

    :try_start_1
    invoke-static {v4, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    :cond_2
    :goto_0
    if-eqz v9, :cond_5

    :try_start_2
    invoke-virtual {p0, v9}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    const/4 v11, 0x1

    :goto_2
    return v11

    :catch_0
    move-exception v2

    const-string v11, "Launcher"

    const-string v12, "failed to parse shortcut intent URI"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_3
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "market://details?id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    const v11, 0x7f0e0002

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    sget-boolean v11, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v11, :cond_4

    const-string v11, "Launcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to launch. tag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " intent="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    const/4 v10, 0x1

    :goto_5
    if-eqz v10, :cond_7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13, v14}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const v11, 0x7f0e0002

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    sget-boolean v11, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v11, :cond_4

    const-string v11, "Launcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Launcher does not have the permission to launch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "or use the exported attribute for this activity. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " intent="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    :try_start_5
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_3
    move-exception v11

    goto/16 :goto_3
.end method

.method public startActivityWithTransition(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "from_right"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    const/high16 v0, 0x7f040000

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public startActivityWithTransitionForHeadlines(Landroid/content/Intent;Z)V
    .locals 7
    .param p1    # Landroid/content/Intent;
    .param p2    # Z

    const v6, 0x7f0e0002

    const/4 v5, 0x0

    const/high16 v3, 0x30200000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xc

    invoke-direct {v0, p0, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/DVFSHelper;->onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const v3, 0x7f040005

    const v4, 0x7f040008

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v3, 0x7f040006

    const v4, 0x7f040007

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "or use the exported attribute for this activity. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public startMagazineApp(Z)V
    .locals 12
    .param p1    # Z

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.launcher.action.ENTER_MAGAZINE_APP"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "sstream.app"

    const-string v8, "sstream.app.activities.StreamActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isVisible()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    :try_start_1
    const-class v7, Landroid/app/Activity;

    const-string v8, "overridePendingTransition"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "cubeup_enter"

    const-string v9, "anim"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "cubeup_exit"

    const-string v9, "anim"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v7, "Launcher"

    const-string v8, "S Stream Activity not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Landroid/os/Bundle;
    .param p4    # Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public unRegisterAirMotionGestureListner()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mConnected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    :cond_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x6f

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public updateMotionGestureListner(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->unRegisterAirMotionGestureListner()V

    goto :goto_0
.end method

.method public updateMotionGestureListner(Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Workspace$State;
    .param p2    # Lcom/android/launcher2/Workspace$State;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->unRegisterAirMotionGestureListner()V

    goto :goto_0
.end method
