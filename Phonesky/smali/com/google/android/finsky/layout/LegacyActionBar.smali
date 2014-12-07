.class public Lcom/google/android/finsky/layout/LegacyActionBar;
.super Landroid/widget/LinearLayout;
.source "LegacyActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBreadcrumb:Landroid/widget/TextView;

.field private final mChevronUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mCorpusChevronIcon:Landroid/widget/ImageView;

.field private mCorpusIcon:Landroid/widget/ImageView;

.field private mCorpusUpPack:Landroid/view/View;

.field private mCurrentBackendId:I

.field private final mGoUpClickListener:Landroid/view/View$OnClickListener;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequestedTitle:Ljava/lang/String;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mShareButton:Landroid/widget/ImageButton;

.field private mSideDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

.field private mWishlistButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$1;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mChevronUpDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSideDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mChevronUpDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/layout/LegacyActionBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncWishlistStatus(Z)V

    return-void
.end method

.method private setupCorpusIcon()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupSearchButton()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$4;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupShareButton()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$5;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupWishlistButton()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$6;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private syncActionBar()V
    .locals 12

    const/4 v7, 0x1

    const/16 v10, 0x8

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v1

    const/4 v9, 0x5

    if-ne v1, v9, :cond_2

    move v4, v7

    :goto_0
    iget-object v11, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_3

    move v9, v8

    :goto_1
    invoke-virtual {v11, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-static {v3, v2}, Lcom/google/android/finsky/utils/WishlistHelper;->shouldHideWishlistAction(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_0
    move v6, v7

    :goto_2
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3
    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v9

    if-eqz v9, :cond_1

    move v10, v8

    :cond_1
    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isBackStackEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v9, 0x7f090111

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncCorpusIcon()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v9, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-static {v0, v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlayActionBarBackgroundDrawable(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/LegacyActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v8, v8, v8, v8}, Lcom/google/android/finsky/layout/LegacyActionBar;->setPadding(IIII)V

    return-void

    :cond_2
    move v4, v8

    goto :goto_0

    :cond_3
    move v9, v10

    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncWishlistStatus(Z)V

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method private syncCorpusIcon()V
    .locals 6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->hasIconOverrideUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/layout/LegacyActionBar$7;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$7;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    const v5, 0x7f030008

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private syncDisplayTitle()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v3, 0x7f090111

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private syncWishlistStatus(Z)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f0901c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f0901c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .locals 0

    return-void
.end method

.method public autoUpdateButtonClicked(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public clearTabs()V
    .locals 0

    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBackendId()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public getSideDrawerDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/layout/LegacyActionBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$3;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setVisibility(I)V

    return-void
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSideDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupSearchButton()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupWishlistButton()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupShareButton()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupCorpusIcon()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$2;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusIcon:Landroid/widget/ImageView;

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSelectedTab(I)V
    .locals 0

    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

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

    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

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

    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public wishlistButtonClicked(Landroid/app/Activity;)V
    .locals 8

    iget-object v6, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

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
    iget-object v6, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v5, Lcom/google/android/finsky/layout/LegacyActionBar$8;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$8;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-static {v2, v3, v5}, Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xcc

    goto :goto_1
.end method
