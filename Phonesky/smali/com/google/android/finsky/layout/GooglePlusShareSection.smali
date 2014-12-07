.class public Lcom/google/android/finsky/layout/GooglePlusShareSection;
.super Landroid/widget/RelativeLayout;
.source "GooglePlusShareSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;
    }
.end annotation


# instance fields
.field private mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mHeader:Landroid/widget/TextView;

.field private mIsFetching:Z

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

.field private final mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$5;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/GooglePlusShareSection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateUi()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/layout/GooglePlusShareSection;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/android/volley/toolbox/JsonObjectRequest;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->createJsonListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/Response$ErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->buildBaseShareIntent(Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/Document;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private buildBaseShareIntent(Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.SHARE_GOOGLE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "authAccount"

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.VERSION"

    const-string v3, "1.00"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createJsonListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method private isSharingSupported(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->buildBaseShareIntent(Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isSupportedCorpus()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUi()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mProgress:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateWithDocument(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->isSupportedCorpus()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->isSharingSupported(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    const v3, 0x7f0800ef

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v3

    if-eqz v3, :cond_3

    const v3, 0x7f0901db

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    const v3, 0x7f0800cf

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getShareHeaderId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0800d9

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mProgress:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequestQueue:Lcom/android/volley/RequestQueue;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901dc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 5

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    sget-object v2, Lcom/google/android/finsky/config/G;->postPurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->isSupportedCorpus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_2
    new-instance v2, Lcom/google/android/finsky/api/model/DfeList;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method
