.class public Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SwiftkeyLanguagesSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;
    }
.end annotation


# static fields
.field public static final BASE_AVAILABLE:I = 0x3e8

.field public static final BASE_DOWNLOADED:I = 0x1

.field private static final REQUEST_CODE:I

.field private static isChineseInstalled:Z

.field private static mDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mPopupWindow:Landroid/widget/PopupWindow;

.field public static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mActionDeleteView:Landroid/widget/TextView;

.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field public mIsHandwritingSearch:Z

.field public mIsVOHWRenable:Z

.field public mLanguagePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPhotosClickListener:Landroid/view/View$OnClickListener;

.field mRMQueryAsyncHandler:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public mTotalLanguageCount:I

.field private mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

.field private mViewUndo:Landroid/view/View;

.field mainScreen:Landroid/preference/PreferenceScreen;

.field private misTablet:Z

.field private settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

.field private volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    sput-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    sput-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    iput v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private notifyUpdateSelectedLanguageList()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private resourceManagerStartQuery()V
    .locals 9

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    if-ne p2, v7, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Delete is Done"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const-string v6, "mDeletingLPList"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f090004

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    const v6, 0x7f090005

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f030000

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v6, "SamsungIME"

    const-string v7, "popupView is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v6, 0x7f080004

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    const-string v7, "%d"

    sget-object v8, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v6, v1, v7, v5, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    check-cast v6, Landroid/os/IBinder;

    const/16 v8, 0x50

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    sget-object v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const v6, 0x7f080005

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "Unable to show popup window because of BadTokenException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v10, "handwriting"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v10

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v10, 0x7f030094

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v10, "select_swiftkey_language_list"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v10

    iput-boolean v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v10

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    :cond_0
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "TABLET_MODE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    :cond_1
    iget-boolean v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x400

    const/16 v12, 0x400

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v10, 0x7f0d002d

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_4
    iget-boolean v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    if-eqz v10, :cond_6

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.visionobjects.resourcemanager"

    const-string v11, "com.visionobjects.resourcemanager.ResourceManagerService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10, v8}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    if-nez v10, :cond_5

    new-instance v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    invoke-direct {v10, p0, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Landroid/content/ContentResolver;)V

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRMQueryAsyncHandler:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$ResourceManagerQueryAsyncHandler;

    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->resourceManagerStartQuery()V

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    sput-object v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    if-nez p1, :cond_7

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "first_swiftkey_download_list_execution"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v10, "swiftkey_download_list_execution"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_a

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->showListUpdateGuideDialog()V

    :cond_7
    :goto_1
    :try_start_0
    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.samsung.inputmethod"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    sput-boolean v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    return-void

    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    goto/16 :goto_0

    :cond_a
    if-eqz v7, :cond_7

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v10}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateLPlist()V

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v10, 0x0

    sput-boolean v10, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v2, 0x7f03006f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v1
.end method

.method public onPause()V
    .locals 8

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    sput-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    :cond_3
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public rebuildLanguageList(Z)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f030094

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    :cond_1
    const-string v2, "select_swiftkey_language_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v16, 0x1

    :goto_0
    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_2

    if-nez v16, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getTotalSupportLanguageList()V

    :cond_3
    const/4 v8, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v20

    if-eqz v20, :cond_4

    const-string v2, "default_keyboard_language"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v22

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    const-string v2, "en"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v14, v3

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v12, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_6
    const/16 v19, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    if-eqz v8, :cond_9

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v12, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_8
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_9
    sget-boolean v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    if-eqz v2, :cond_a

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :cond_b
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "af"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    if-eqz v2, :cond_c

    if-eqz v22, :cond_c

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :cond_c
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    if-eqz v2, :cond_11

    const/4 v1, 0x0

    if-eqz v16, :cond_d

    if-eqz v16, :cond_15

    if-eqz v5, :cond_15

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    :goto_3
    if-eqz v1, :cond_e

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit8 v2, v19, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v4, v6, v0}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    if-eqz v16, :cond_11

    if-eqz v1, :cond_11

    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    goto/16 :goto_2

    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    goto/16 :goto_1

    :cond_14
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_3

    :cond_15
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_3

    :cond_16
    move/from16 v0, v19

    add-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateSupportLanguageListforSwiftkey()V

    :cond_18
    return-void
.end method
