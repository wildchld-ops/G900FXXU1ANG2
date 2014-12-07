.class public Lcom/google/android/finsky/utils/UninstallRefundTracker;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/UninstallRefundTracker$3;
    }
.end annotation


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/appstate/AppStates;
    .param p3    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {p3, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/UninstallRefundTracker;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/utils/UninstallRefundTracker;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/UninstallRefundTracker;->refundIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/UninstallRefundTracker;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/UninstallRefundTracker;

    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private refundIfNecessary(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    iget-boolean v1, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;-><init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;)V

    invoke-static {p1, v1, v2}, Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V

    goto :goto_0
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

    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    new-instance v1, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;-><init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
