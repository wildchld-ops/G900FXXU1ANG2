.class public Lcom/google/android/finsky/DfeNotificationManagerImpl;
.super Ljava/lang/Object;
.source "DfeNotificationManagerImpl.java"

# interfaces
.implements Lcom/google/android/finsky/api/DfeNotificationManager;


# instance fields
.field private final mAccounts:Lcom/google/android/finsky/library/Accounts;

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private final mHandledNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private final mPendingAcks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/library/Accounts;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iput-object p3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iput-object p1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p5, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    iput-object p6, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-direct {p0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->loadPendingAcks()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/DfeNotificationManagerImpl;Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/DfeNotificationManagerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/DfeNotificationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->savePendingAcks()V

    return-void
.end method

.method private ackNotification(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;-><init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/finsky/DfeNotificationManagerImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl$3;-><init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->ackNotification(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method private ackPendingNotifications(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackNotification(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static containsIabMutations(Lcom/google/android/finsky/protos/Library$LibraryUpdate;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v6, v3, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v6}, Lcom/google/android/finsky/utils/DocUtils;->isInAppDocid(Lcom/google/android/finsky/protos/Common$Docid;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Encountered IAB item in notification: %s."

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v8, v8, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private handleCheckPromoOffersNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Received CheckPromoOffers notification for account %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method private handleInAppNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;->inAppNotificationId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private handleLibraryDirtyNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    if-nez v3, :cond_0

    const-string v3, "Received LibraryDirty notification without LibraryDirtyData: id=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "Received LibraryDirty notification for invalid account: id=%s, account=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    iget-object v3, v3, Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;->libraryId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    iget-object v3, v3, Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;->libraryId:Ljava/lang/String;

    aput-object v3, v2, v6

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v2, v4, v5}, Lcom/google/android/finsky/library/LibraryReplicators;->replicateAccount(Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    iget v1, v3, Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;->backend:I

    invoke-static {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_1
.end method

.method private handleNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Notification [%s] ignored, already handled."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackPendingNotifications(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v4, "Handling notification type=[%s], id=[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v4, :cond_1

    iget-object v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v4, v1}, Lcom/google/android/finsky/library/Accounts;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "Processing notification library update."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-static {v2}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->containsIabMutations(Lcom/google/android/finsky/protos/Library$LibraryUpdate;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Ignoring notification LibraryUpdate with IAB mutations."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget v4, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "Unhandled notification type [%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->makeReplicatorDebugTag(Lcom/google/android/finsky/protos/Notifications$Notification;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v2, v5}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "Could not process library update for unknown account."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handlePurchaseDeliveryNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handlePurchaseRemovalNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handlePurchaseDeclinedNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleUserNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleInAppNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleLibraryDirtyNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleCheckPromoOffersNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->savePendingAcks()V

    invoke-direct {p0, v3}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackPendingNotifications(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handlePurchaseDeclinedNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    iget v7, v0, Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;->reason:I

    iget-object v0, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v2, v0, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    const-string v0, "Received PURCHASE_DECLINED tickle for %s reason=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void
.end method

.method private handlePurchaseDeliveryNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    if-nez v1, :cond_0

    const-string v1, "Ignoring PurchaseDeliveryNotification because AppData was null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-nez v1, :cond_1

    const-string v1, "Ignoring PurchaseDeliveryNotification because delivery data was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v3, v1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated:Z

    if-nez v1, :cond_2

    const-string v1, "Ignoring PurchaseDeliveryNotification with !server_initiated: pkg=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    new-instance v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v7}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    move-object/from16 v0, v17

    iget v1, v0, Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;->versionCode:I

    iput v1, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->version:I

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasVersion:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0xc9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object/from16 v0, v17

    iget v10, v0, Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;->versionCode:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "tickle"

    move-object v9, v3

    invoke-interface/range {v8 .. v16}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private handlePurchaseRemovalNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v2, v1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;->malicious:Z

    if-eqz v1, :cond_2

    move v7, v0

    :goto_0
    iget-object v9, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    const-string v1, "Removing package \'%s\'. Malicious=\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_0

    new-instance v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v6}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    iget v1, v8, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v1, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    iput-boolean v0, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasOldVersion:Z

    iget-boolean v1, v8, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    iput-boolean v1, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->systemApp:Z

    iput-boolean v0, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasSystemApp:Z

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0xca

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    if-eqz v8, :cond_1

    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0, v9, v2}, Lcom/google/android/finsky/utils/Notifier;->showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, v2}, Lcom/google/android/finsky/receivers/Installer;->uninstallPackagesByUid(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    move v7, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0, v9, v2}, Lcom/google/android/finsky/utils/Notifier;->showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, v2}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleUserNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v2, v0, Lcom/google/android/finsky/protos/Notifications$UserNotificationData;->notificationTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/protos/Notifications$UserNotificationData;->tickerText:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/protos/Notifications$UserNotificationData;->notificationText:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadPendingAcks()V
    .locals 5

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeReplicatorDebugTag(Lcom/google/android/finsky/protos/Notifications$Notification;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification (type=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private savePendingAcks()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, ","

    iget-object v2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public processNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleNotification(Lcom/google/android/finsky/protos/Notifications$Notification;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    new-instance v1, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;-><init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Lcom/google/android/finsky/protos/Notifications$Notification;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
