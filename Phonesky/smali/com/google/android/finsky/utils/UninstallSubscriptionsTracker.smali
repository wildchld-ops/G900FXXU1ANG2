.class public Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;
.super Ljava/lang/Object;
.source "UninstallSubscriptionsTracker.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/library/Libraries;
    .param p3    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->checkAndNotifyActiveSubscriptions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;)Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAndNotifyActiveSubscriptions(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/DocUtils;->packageHasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;-><init>(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .param p1    # [Ljava/lang/String;
    .param p2    # Z

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    new-instance v1, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$1;-><init>(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
