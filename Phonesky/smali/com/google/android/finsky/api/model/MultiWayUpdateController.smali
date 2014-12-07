.class public Lcom/google/android/finsky/api/model/MultiWayUpdateController;
.super Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;
.source "MultiWayUpdateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;,
        Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;,
        Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static sPackageBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppToAccountTagMatchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;",
            ">;"
        }
    .end annotation
.end field

.field private mCollatedDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->sPackageBlacklist:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/appstate/InstallerDataStore;Lcom/google/android/finsky/library/Libraries;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore;
    .param p2    # Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-void
.end method

.method private blacklistPackage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->sPackageBlacklist:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->sPackageBlacklist:Ljava/util/Set;

    :cond_0
    sget-object v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->sPackageBlacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private captureUpdateAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v2, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p2}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Capture account %s for next update of %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v2, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAccountForUpdate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountForUpdate()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isAutoAcquireAttempt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;

    iget-object v3, v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;->docId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;->accountName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static selectAccountsForUpdateChecks(Lcom/google/android/finsky/appstate/InstallerDataStore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/InstallerDataStore;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v9, v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {p0, v7}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_4

    move v8, v10

    :goto_1
    if-nez v8, :cond_3

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v8, v11

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eq v1, v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {p0, v7}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_8

    move v8, v10

    :goto_4
    if-nez v8, :cond_7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    move v8, v11

    goto :goto_4

    :cond_9
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method

.method private startAutoAcquire(Ljava/lang/String;Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v1, p2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->account:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->document:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Skip auto-acquire of %s by %s because already owned"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    iget-object v4, p2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->account:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->blacklistPackage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->document:Lcom/google/android/finsky/api/model/Document;

    move-object v4, v3

    move-object v5, v3

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/PurchaseInitiator$SuccessListener;ZZ)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->blacklistPackage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected addAutoAcquireAppsToRequests(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;

    const-string v2, "Add %s to check for potential auto-acquire by %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;->docId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;->accountName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;->accountName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;->docId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addRequests(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->collectAccountAutoAcquireTags()[Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->collectAutoAcquireApps(Ljava/util/Map;[Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;)V

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addAutoAcquireAppsToRequests(Ljava/util/Map;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addRequest(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected addToAutoAcquireWorkList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mAppToAccountTagMatchList:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;

    invoke-direct {v1, p1, p2}, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AppToAccountTagMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected captureAutoAcquireTags(Lcom/google/android/finsky/api/model/Document;)V
    .locals 9
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v4, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v5, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v3, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :goto_0
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Change auto-acquire tags for %s from %s to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->commaPackStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Utils;->commaPackStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    array-length v5, v2

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v5, v4, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoAcquireTags(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoAcquireTags()[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected captureVariesByAccount(Lcom/google/android/finsky/api/model/Document;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v8, 0x0

    const/16 v0, 0x40

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v9

    iget-object v6, v9, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v9

    iget-boolean v7, v9, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    if-eqz v7, :cond_2

    const/16 v2, 0x40

    :goto_0
    iget-object v9, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v9, v6}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    if-nez v1, :cond_3

    move v5, v8

    :goto_1
    and-int/lit8 v4, v5, 0x40

    if-eq v2, v4, :cond_1

    const-string v9, "Change varies-by-account for %s to %b"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v8

    const/4 v8, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    and-int/lit8 v3, v5, -0x41

    or-int/2addr v3, v2

    iget-object v8, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v8, v6, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    move v2, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v5

    goto :goto_1
.end method

.method protected collateResponses()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mCollatedDocuments:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, "Unexpected repeat collation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->generatePackageMap(Z)Ljava/util/Map;

    move-result-object v16

    if-nez v16, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mCollatedDocuments:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    iget-object v10, v15, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->document:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->captureVariesByAccount(Lcom/google/android/finsky/api/model/Document;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->captureAutoAcquireTags(Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v15, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->needAccountForUpdate:Z

    if-eqz v1, :cond_3

    iget-object v1, v15, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->account:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->captureUpdateAccount(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mCollatedDocuments:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->captureUpdateAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->generatePackageMap(Z)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    iget v0, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->versionCode:I

    move/from16 v17, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    iget-object v8, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->account:Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    iget-object v1, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->document:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-boolean v1, v11, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    if-eqz v1, :cond_5

    const-string v1, "Skipping proposed auto-acquire - Unexpected checkoutFlowRequired=true for %s by %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->blacklistPackage(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    if-eqz v14, :cond_6

    iget v1, v14, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->versionCode:I

    move/from16 v0, v17

    if-le v0, v1, :cond_6

    const-string v1, "Proposed auto-acquire of %s by %s revealed higher version %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->startAutoAcquire(Ljava/lang/String;Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;)V

    new-instance v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v7}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    iget v1, v14, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->versionCode:I

    iput v1, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    move/from16 v0, v17

    iput v0, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->version:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, v14, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x74

    const-string v4, "auto-acquire"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x75

    const-string v4, "auto-acquire"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "Skipping proposed auto-acquire of %s by %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->blacklistPackage(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected collectAccountAutoAcquireTags()[Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v3}, Lcom/google/android/finsky/library/AccountLibrary;->getAutoAcquireTags()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v5, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;

    invoke-virtual {v3}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;

    goto :goto_1
.end method

.method protected collectAutoAcquireApps(Ljava/util/Map;[Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;)V
    .locals 11
    .param p2    # [Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[",
            "Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v10, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->sPackageBlacklist:Ljava/util/Set;

    if-eqz v10, :cond_2

    sget-object v10, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->sPackageBlacklist:Ljava/util/Set;

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_2
    iget-object v10, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v10, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoAcquireTags()[Ljava/lang/String;

    move-result-object v3

    array-length v10, v3

    if-eqz v10, :cond_1

    invoke-virtual {p0, v3, p2}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->findAccountWithMatchingTags([Ljava/lang/String;[Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0, v4, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addToAutoAcquireWorkList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected findAccountWithMatchingTags([Ljava/lang/String;[Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;)Ljava/lang/String;
    .locals 13
    .param p1    # [Ljava/lang/String;
    .param p2    # [Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;

    move-object v3, p2

    array-length v9, v3

    const/4 v6, 0x0

    move v8, v6

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v1, v3, v8

    iget-object v4, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;->tags:[Ljava/lang/String;

    array-length v10, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v0, v4, v7

    move-object v5, p1

    array-length v11, v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_1

    aget-object v2, v5, v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, v1, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;->accountName:Ljava/lang/String;

    :goto_3
    return-object v12

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_3
.end method

.method protected generatePackageMap(Z)Ljava/util/Map;
    .locals 11
    .param p1    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iget-object v10, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mRequests:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->getDocuments()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v5, 0x0

    :cond_1
    return-object v5

    :cond_2
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v10

    iget-object v6, v10, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v10

    iget v9, v10, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    invoke-direct {p0, v6, v0}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->isAutoAcquireAttempt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-ne p1, v10, :cond_3

    if-nez v2, :cond_4

    new-instance v10, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;

    invoke-direct {v10, v0, v9, v1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;-><init>(Ljava/lang/String;ILcom/google/android/finsky/api/model/Document;)V

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget v10, v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->versionCode:I

    if-eq v9, v10, :cond_5

    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->needAccountForUpdate:Z

    :cond_5
    iget v10, v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->versionCode:I

    if-le v9, v10, :cond_3

    iput v9, v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->versionCode:I

    iput-object v0, v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->account:Ljava/lang/String;

    iput-object v1, v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->document:Lcom/google/android/finsky/api/model/Document;

    goto :goto_0
.end method

.method public getDocuments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->mCollatedDocuments:Ljava/util/List;

    return-object v0
.end method
