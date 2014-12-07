.class public Lcom/android/launcher2/ThemeLoader;
.super Ljava/lang/Object;
.source "ThemeLoader.java"


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "ThemeLoader"

.field private static final THIRD_APP_SCALE_RATE:F = 0.75f

.field private static THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static final mAppIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAppMenuIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPaint:Landroid/graphics/Paint;

.field private static final mSamsungWidgetPreviewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWidgetPreviewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static sMenuIconWidth:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsUseDefaultTheme:Z

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/ThemeLoader;->DEBUGGABLE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sput v1, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    iput-object p1, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v3, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0064

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sput v3, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    const-string v3, "ic_01_3rd_party_icon"

    invoke-virtual {p0, v3}, Lcom/android/launcher2/ThemeLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initAppIconMap()V

    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initAppMenuIconMap()V

    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initWidgetPreviewMap()V

    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initSamsungWidgetPreviewMap()V

    goto :goto_0
.end method

.method private initAppIconMap()V
    .locals 3

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.servicecentre.ServiceCentreActivity"

    const-string v2, "ic_02_servicecenter_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.groupcast.start.StartActivity"

    const-string v2, "ic_04_group_play_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.ncr.CardListActivity"

    const-string v2, "ic_05_business_card_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.ncr.InitActivity"

    const-string v2, "ic_05_business_card_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.moreservices.moreservices"

    const-string v2, "ic_06_more_service_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.sync.ui.SyncActivity"

    const-string v2, "ic_07_back_up_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.gallery3d.app.Gallery"

    const-string v2, "ic_08_gallery_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.gallery3d.app.GalleryActivity"

    const-string v2, "ic_08_gallery_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.helphub.HelpHubActivity"

    const-string v2, "ic_10_help_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.clockpackage.ClockPackage"

    const-string v2, "ic_11_clock_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.Settings"

    const-string v2, "ic_12_setting_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.SettingsTabActivity"

    const-string v2, "ic_12_setting_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.GridSettings"

    const-string v2, "ic_12_setting_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.vlingo.midas.gui.ConversationActivity"

    const-string v2, "ic_13_s_voice_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.snote.control.ui.filemanager.MainHomeActivity"

    const-string v2, "ic_14_s_note_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music.MusicActionTabActivity"

    const-string v2, "ic_15_music_player_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.musicplus.MusicMainActivity"

    const-string v2, "ic_15_music_player_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_16_music_hub_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_17_video_hub_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.everglades.video.VideoMain"

    const-string v2, "ic_18_video_player_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.episodes.ui.timeline.TimelineActivity"

    const-string v2, "ic_19_story_album_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.providers.downloads.ui.DownloadList"

    const-string v2, "ic_20_download_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.contacts.RecntcallEntryActivity"

    const-string v2, "ic_21_call_log_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.voicenote.main.VNMainActivity"

    const-string v2, "ic_22_voice_recoder_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    const-string v2, "ic_22_voice_recoder_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.myfiles.MainActivity"

    const-string v2, "ic_23_myfile_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_24_fm_radio_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.email.activity.Welcome"

    const-string v2, "ic_25_email_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox.SearchActivity"

    const-string v2, "ic_26_search_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.autonavi.xmgd.navigator.keyboard.Start"

    const-string v2, "ic_27_navigation_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.ocr.OCR"

    const-string v2, "ic_28_optical_reader_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.popupcalculator.Calculator"

    const-string v2, "ic_29_calculator_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.q1_penmemo.MemoListActivity"

    const-string v2, "ic_30_s_memo_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.calendar.AllInOneActivity"

    const-string v2, "ic_31_calender_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Camera"

    const-string v2, "ic_32_camera_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.firewall.VIPMainActivity"

    const-string v2, "ic_34_vipmode_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.security.mms.ui.PasswordActivity"

    const-string v2, "ic_35_security_mail_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    const-string v2, "ic_36_phone_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.dialer.DialtactsActivity"

    const-string v2, "ic_36_phone_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.PeopleActivity"

    const-string v2, "ic_37_contact_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    const-string v2, "ic_38_message_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    const-string v2, "ic_39_internet_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser.OfflinePageActivity"

    const-string v2, "ic_39_internet_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser.BrowserActivity"

    const-string v2, "ic_39_internet_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.themechooser.ThemeListActivity"

    const-string v2, "ic_41_theme_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initAppMenuIconMap()V
    .locals 3

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.servicecentre.ServiceCentreActivity"

    const-string v2, "ic_02_servicecenter_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.groupcast.start.StartActivity"

    const-string v2, "ic_04_group_play_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.ncr.CardListActivity"

    const-string v2, "ic_05_business_card_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.moreservices.moreservices"

    const-string v2, "ic_06_more_service_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.sync.ui.SyncActivity"

    const-string v2, "ic_07_back_up_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.gallery3d.app.Gallery"

    const-string v2, "ic_08_gallery_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.translator.MainActivity"

    const-string v2, "ic_09_s_translator_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.helphub.HelpHubActivity"

    const-string v2, "ic_10_help_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.clockpackage.ClockPackage"

    const-string v2, "ic_11_clock_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.Settings"

    const-string v2, "ic_12_setting_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.SettingsTabActivity"

    const-string v2, "ic_12_setting_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.vlingo.midas.gui.ConversationActivity"

    const-string v2, "ic_13_s_voice_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.snote.control.ui.filemanager.MainHomeActivity"

    const-string v2, "ic_14_s_note_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music.MusicActionTabActivity"

    const-string v2, "ic_15_music_player_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_16_music_hub_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_17_video_hub_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.everglades.video.VideoMain"

    const-string v2, "ic_18_video_player_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.episodes.ui.timeline.TimelineActivity"

    const-string v2, "ic_19_story_album_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.providers.downloads.ui.DownloadList"

    const-string v2, "ic_20_download_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.contacts.RecntcallEntryActivity"

    const-string v2, "ic_21_call_log_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    const-string v2, "ic_22_voice_recoder_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.myfiles.MainActivity"

    const-string v2, "ic_23_myfile_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_24_fm_radio_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.email.activity.Welcome"

    const-string v2, "ic_25_email_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox.SearchActivity"

    const-string v2, "ic_26_search_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.autonavi.xmgd.navigator.keyboard.Start"

    const-string v2, "ic_27_navigation_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.ocr.OCR"

    const-string v2, "ic_28_optical_reader_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.popupcalculator.Calculator"

    const-string v2, "ic_29_calculator_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.q1_penmemo.MemoListActivity"

    const-string v2, "ic_30_s_memo_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.calendar.AllInOneActivity"

    const-string v2, "ic_31_calender_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Camera"

    const-string v2, "ic_32_camera_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.firewall.VIPMainActivity"

    const-string v2, "ic_34_vipmode_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.security.mms.ui.PasswordActivity"

    const-string v2, "ic_35_security_mail_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    const-string v2, "ic_36_phone_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.PeopleActivity"

    const-string v2, "ic_37_contact_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    const-string v2, "ic_38_message_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    const-string v2, "ic_39_internet_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser.OfflinePageActivity"

    const-string v2, "ic_39_internet_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.browser.BrowserActivity"

    const-string v2, "ic_39_internet_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.themechooser.ThemeListActivity"

    const-string v2, "ic_40_theme_icon_menu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initSamsungWidgetPreviewMap()V
    .locals 3

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget/Today_mini"

    const-string v2, "widget_preview_minitoday"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget/Month"

    const-string v2, "widget_preview_month"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initWidgetPreviewMap()V
    .locals 3

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.alarmwidget"

    const-string v2, "widget_alarm_preview_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.dualclockdigital"

    const-string v2, "dual_cn_1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    const-string v2, "single_a_cn_4x1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock2x1"

    const-string v2, "single_a_cn_2x1_12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "home_musicplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.videoplayer"

    const-string v2, "videoplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclocksimple"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclockunique"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColor( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getText( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUseDefaultTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    return v0
.end method

.method public load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;

    const/high16 v7, 0x3f400000

    const/4 v6, 0x0

    const/high16 v5, 0x40000000

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public load3rdAppMenuIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/high16 v7, 0x3f400000

    const/4 v6, 0x0

    const/high16 v5, 0x40000000

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    sget v2, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    sget v3, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    sget v2, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    sget v2, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppIconBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadAppIconBitmapByPackageName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v6, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-object v6, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v6, v4}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "ThemeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppIconBitmap( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadAppMenuIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mAppMenuIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    invoke-static {v1, v4, v5}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppIconBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIconDrawable( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadSamsungWidgetPreviewBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSamsungWidgetPreviewBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadSamsungWidgetPreviewDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSamsungWidgetPreviewDrawable( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadWidgetPreviewBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadWidgetPreviewBitmap( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadWidgetPreviewDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadWidgetPreviewImageDrawable( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMenuIconSize(I)V
    .locals 3
    .param p1    # I

    sput p1, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    const-string v1, "ic_01_3rd_party_icon_menu"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/ThemeLoader;->THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
