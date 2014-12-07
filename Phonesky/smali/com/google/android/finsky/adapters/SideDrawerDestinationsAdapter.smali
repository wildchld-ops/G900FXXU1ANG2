.class public Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SideDrawerDestinationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentBackendId:I

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mPrimaryActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateHandler:Landroid/os/Handler;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$1;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$2;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->logMenuClickEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    return v0
.end method

.method private createContent()V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v1

    new-instance v2, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f090353

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-ne v1, v9, :cond_6

    move v8, v9

    :goto_1
    new-instance v12, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$3;

    invoke-direct {v12, p0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$3;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V

    invoke-direct {v2, p0, v11, v8, v12}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Ljava/lang/String;ZLjava/lang/Runnable;)V

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/finsky/config/G;->wishlistEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v7, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f0902f4

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v8, 0xa

    if-ne v1, v8, :cond_7

    move v8, v9

    :goto_2
    new-instance v12, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$4;

    invoke-direct {v12, p0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$4;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V

    invoke-direct {v7, p0, v11, v8, v12}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Ljava/lang/String;ZLjava/lang/Runnable;)V

    :cond_2
    new-instance v4, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f09009b

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$5;

    invoke-direct {v11, p0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$5;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V

    invoke-direct {v4, p0, v8, v10, v11}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Ljava/lang/String;ZLjava/lang/Runnable;)V

    iget v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    if-nez v8, :cond_8

    const/4 v8, 0x3

    :goto_3
    invoke-direct {p0, v8}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->makeMyCollectionAction(I)Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    move-result-object v0

    iget v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    const/16 v11, 0x9

    if-ne v8, v11, :cond_9

    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move v8, v10

    goto :goto_1

    :cond_7
    move v8, v10

    goto :goto_2

    :cond_8
    iget v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget v11, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    invoke-virtual {v8, v11}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v3

    iget-object v8, v3, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->shopName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v6, v3, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->shopName:Ljava/lang/String;

    :goto_4
    new-instance v5, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    const/4 v8, 0x2

    if-ne v1, v8, :cond_d

    :goto_5
    new-instance v8, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;

    invoke-direct {v8, p0, v3}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$6;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Lcom/google/android/finsky/protos/Toc$CorpusMetadata;)V

    invoke-direct {v5, p0, v6, v9, v8}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Ljava/lang/String;ZLjava/lang/Runnable;)V

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_a

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_b

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f090357

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_d
    move v9, v10

    goto :goto_5
.end method

.method public static isTopLevelSideDrawerDestination(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Z
    .locals 6
    .param p0    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    instance-of v4, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    if-eqz v4, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(Ljava/lang/String;)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private logMenuClickEvent(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private makeMyCollectionAction(I)Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;
    .locals 6
    .param p1    # I

    const/4 v5, 0x3

    invoke-static {p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-ne p1, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v4

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v3, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;I)V

    new-instance v1, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;-><init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mPrimaryActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mIsActive:Z
    invoke-static {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->access$700(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_0

    const v1, 0x7f04012f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    if-eqz p2, :cond_1

    check-cast p2, Landroid/widget/TextView;

    move-object v2, p2

    :goto_1
    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->mActionText:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->access$800(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    const v1, 0x7f040130

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v2, v4

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->createContent()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 2
    .param p1    # I

    iget v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mCurrentBackendId:I

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
