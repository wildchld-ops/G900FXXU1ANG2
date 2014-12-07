.class public Lcom/google/android/finsky/activities/SubscriptionsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SubscriptionsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mDestroyed:Z

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSavedState:Landroid/os/Bundle;

.field private mSubscriptionItemLayoutId:I

.field private mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Lcom/google/android/finsky/layout/SubscriptionsSection;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelSubscription(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/finsky/library/RevokeListenerWrapper;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$3;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$3;-><init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/finsky/library/RevokeListenerWrapper;-><init>(Lcom/google/android/finsky/library/LibraryReplicators;Landroid/accounts/Account;Lcom/android/volley/Response$Listener;)V

    new-instance v4, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$4;-><init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private getLibraryAppSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getLibraryMagazineSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 3
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/AccountLibrary;->getMagazinesSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v1

    return-object v1
.end method

.method private handleMusicSubscriptions()V
    .locals 14

    const/4 v13, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    sget-object v11, Lcom/google/android/finsky/config/G;->musicAppSubscriptionBackendDocidBlacklist:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    if-eqz v3, :cond_0

    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    iget-object v11, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v12, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v12}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    const/4 v11, 0x2

    invoke-static {v11}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/library/AccountLibrary;->getLibrary(Ljava/lang/String;)Lcom/google/android/finsky/library/HashingLibrary;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/finsky/library/Library;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/library/LibraryEntry;

    instance-of v11, v5, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    if-eqz v11, :cond_1

    move-object v10, v5

    check-cast v10, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    invoke-virtual {v10}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "Ignoring blacklisted subscription: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {v9, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/finsky/utils/DocUtils;->getMusicSubscriptionDocid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    sget-boolean v11, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "No active music subscriptions."

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v11, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v12, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;

    invoke-direct {v12, p0, v9}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;-><init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;Ljava/util/Map;)V

    new-instance v13, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;

    invoke-direct {v13, p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;-><init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V

    invoke-interface {v11, v8, v12, v13}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_1
.end method

.method private rebindViews()V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/SubscriptionsSection;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v7

    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    const-string v0, "com.google.android.music"

    iget-object v3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->handleMusicSubscriptions()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasAppSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SubscriptionsSection;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->clearSubscriptions()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->getLibraryAppSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    iget v3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/SubscriptionsSection;->addSubscription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;ILcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SubscriptionsSection;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->clearSubscriptions()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->getLibraryMagazineSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    iget v3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/SubscriptionsSection;->addSubscription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;ILcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_2
.end method


# virtual methods
.method public bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
    .param p2    # Lcom/google/android/finsky/layout/SubscriptionsSection;
    .param p3    # Lcom/google/android/finsky/api/DfeApi;
    .param p4    # Lcom/google/android/finsky/api/model/Document;
    .param p5    # I
    .param p6    # Landroid/os/Bundle;
    .param p7    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    iput-object p3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p6, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I

    iput-object p7, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p4    # Lcom/google/android/finsky/library/Libraries;

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDestroyed:Z

    iput-object p4, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    return-void
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V
    .locals 13
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    const-string v0, "SubscriptionsViewBinder.confirm_cancel_dialog"

    invoke-virtual {v10, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v0, p2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    cmp-long v0, v11, v0

    if-gez v0, :cond_1

    const v8, 0x7f090195

    :goto_1
    new-instance v7, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x130

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v2

    const/16 v3, 0xf3

    const/16 v4, 0xf4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v0, "authAccount"

    invoke-virtual {p2}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "subscription_doc"

    invoke-virtual {v9, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x3

    invoke-virtual {v7, v0, v1, v9}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v6

    const-string v0, "SubscriptionsViewBinder.confirm_cancel_dialog"

    invoke-virtual {v6, v10, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v8, 0x7f090194

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDestroyed:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    :cond_0
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/library/AccountLibrary;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const-string v2, "authAccount"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "subscription_doc"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->cancelSubscription(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SubscriptionsSection;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
