.class public Lcom/android/launcher2/HomeScreenOptionMenu;
.super Landroid/widget/LinearLayout;
.source "HomeScreenOptionMenu.java"


# static fields
.field public static final HOME_OPTION_SETTINGS:I = 0x2

.field public static final HOME_OPTION_WALLPAPERS:I = 0x0

.field public static final HOME_OPTION_WIDGETS:I = 0x1

.field static isWidgetTab:Z

.field static mIsActive:Z


# instance fields
.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOnClickListenerSettings:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWidget:Landroid/view/View$OnClickListener;

.field private mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    return-void
.end method

.method private setup()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionSettings;

    invoke-direct {v0}, Lcom/android/launcher2/HomeScreenOptionSettings;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    return-void
.end method


# virtual methods
.method public getHomeScreenOptionSettings()Lcom/android/launcher2/HomeScreenOptionSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return v0
.end method

.method public isSettingVisible()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method public launchOptionSettings()V
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.launcher2.intent.action.HomeScreenOptionSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public launchOptionWallpaper()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {v0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public launchOptionWidgets()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    :cond_0
    sput-boolean v4, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    :cond_3
    sput-boolean v4, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const v4, 0x7f080066

    const v3, 0x7f080065

    const v2, 0x7f080064

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget-object v0, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMakeActive(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return-void
.end method
