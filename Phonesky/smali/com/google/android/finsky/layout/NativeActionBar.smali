.class public Lcom/google/android/finsky/layout/NativeActionBar;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# static fields
.field private static final FORCE_BACKGROUND_LAYOUT_PASS:Z

.field private static final ICS_OR_NEWER:Z

.field private static sBackgroundCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSawFirstBackstackChange:Z


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mActionBarCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAutoUpdateItem:Landroid/view/MenuItem;

.field private mCurrentBackendId:I

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequestedTitle:Ljava/lang/String;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShareItem:Landroid/view/MenuItem;

.field private mUseActionBarTabs:Z

.field private mWishlistItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/google/android/finsky/layout/NativeActionBar;->FORCE_BACKGROUND_LAYOUT_PASS:Z

    sput-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->sSawFirstBackstackChange:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/layout/NativeActionBar;->sBackgroundCache:Ljava/util/Map;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-static {p1, v2}, Lcom/google/android/finsky/layout/NativeActionBar;->getBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    iput v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->sSawFirstBackstackChange:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/android/finsky/layout/NativeActionBar;->sSawFirstBackstackChange:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->clearSearchIfNecessary()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/NativeActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/NativeActionBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/NativeActionBar;->syncWishlistStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private clearSearchIfNecessary()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0
.end method

.method private static getBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    sget-object v3, Lcom/google/android/finsky/layout/NativeActionBar;->sBackgroundCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlayActionBarBackgroundDrawable(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/layout/NativeActionBar$3;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/finsky/layout/NativeActionBar$3;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/finsky/layout/NativeActionBar;->sBackgroundCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    return-object v3
.end method

.method private setupCorpusIcon()V
    .locals 6

    sget-boolean v4, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->hasIconOverrideUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/layout/NativeActionBar$4;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/NativeActionBar$4;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f030008

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0
.end method

.method private syncActionBar()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V

    sget-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->FORCE_BACKGROUND_LAYOUT_PASS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBarCustomView:Landroid/view/View;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBarCustomView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBarCustomView:Landroid/view/View;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    iget v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v3, v4}, Lcom/google/android/finsky/layout/NativeActionBar;->getBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->FORCE_BACKGROUND_LAYOUT_PASS:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBarCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDetailsPageMenuItem()V

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isBackStackEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget-boolean v1, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private syncDetailsPageMenuItem()V
    .locals 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    const/4 v9, 0x5

    if-ne v0, v9, :cond_5

    move v4, v7

    :goto_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v9, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v2, v1}, Lcom/google/android/finsky/utils/WishlistHelper;->shouldHideWishlistAction(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    move v6, v7

    :goto_1
    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    if-eqz v9, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v10

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v11

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/google/android/finsky/layout/AutoUpdateSection;->isAutoUpdateVisible(Ljava/lang/String;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_3
    iget-object v7, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v4, v8

    goto :goto_0

    :cond_6
    move v6, v8

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/finsky/layout/NativeActionBar;->syncWishlistStatus(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/finsky/layout/AutoUpdateSection;->isAutoUpdateEnabled(Ljava/lang/String;)Z

    move-result v3

    iget-object v8, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    const v9, 0x7f090116

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private syncDisplayTitle()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f090111

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private syncWishlistStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f0200bf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f0901c9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f0200be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f0901c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .locals 3

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mUseActionBarTabs:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    :cond_1
    new-instance v1, Lcom/google/android/finsky/layout/NativeActionBar$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/layout/NativeActionBar$5;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public autoUpdateButtonClicked(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/layout/AutoUpdateSection;->handleAutoUpdateButtonClick(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    return-void
.end method

.method public clearTabs()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x0

    const v2, 0x7f080017

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    sget-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const v2, 0x7f080016

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    const v2, 0x7f080257

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    const v2, 0x7f080015

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const-string v2, "search"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mAutoUpdateItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentBackendId()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public getSideDrawerDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v2, Lcom/google/android/finsky/layout/NativeActionBar$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/NativeActionBar$1;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mUseActionBarTabs:Z

    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelectedTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f0901f3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "Tried to share an item but there is no document active"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public wishlistButtonClicked(Landroid/app/Activity;)V
    .locals 8

    iget-object v6, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v6, "Tried to wishlist an item but there is no document active."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0xcd

    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v5, Lcom/google/android/finsky/layout/NativeActionBar$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/NativeActionBar$2;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-static {v2, v3, v5}, Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xcc

    goto :goto_1
.end method
