.class public Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DcbDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;
    }
.end annotation


# static fields
.field private static final GSERVICES_DETAILS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCredStatus:Landroid/widget/RatingBar;

.field private mDcbParamStatus:Landroid/widget/RatingBar;

.field private mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mProvStatus:Landroid/widget/RatingBar;

.field private final updateStatusRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingDcbConnectionType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingDcbProxyHost:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingDcbProxyPort:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierCredentialsBufferMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRefreshFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRetryMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;-><init>(Lcom/google/android/finsky/config/GservicesValue;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->GSERVICES_DETAILS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshCredentials(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayProvisioning()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayCredentials()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayDcbParams()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->GSERVICES_DETAILS:Ljava/util/Collection;

    return-object v0
.end method

.method private displayCredentials()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v2

    const-string v3, "cred"

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    const-string v3, "Credentials"

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V

    const-string v3, "showCredentials"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method private displayDcbParams()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    const-string v3, "dcb"

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    const-string v3, "DCB Params"

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V

    const-string v3, "showDcbParams"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method private displayProvisioning()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v2

    const-string v3, "prov"

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    const-string v3, "Provisioning"

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;Ljava/lang/String;)V

    const-string v3, "showProvisioning"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method private handleMenuClearItem(I)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Got unexpected whichField %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatus()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearParams()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearProvisioning()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearCredentials()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleMenuRefreshItem(I)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Got unexpected whichField %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatusRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshCredentials(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleMenuViewDetails(I)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Got unexpected whichField %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayDcbParams()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayProvisioning()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->displayCredentials()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private refreshAllInfo()V
    .locals 3

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$3;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$4;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$4;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingLocator;->initCarrierBillingStorage(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshCredentials(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;

    const-string v1, "Error refreshing credentials"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;-><init>()V

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getProvisioningId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshDcbParams(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$9;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/GetTocHelper;->getToc(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    return-void
.end method

.method private refreshProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;

    const-string v1, "Error refreshing provisioning"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$ErrorRunnable;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateStatus()V
    .locals 7

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v1

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->areCredentialsValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mProvStatus:Landroid/widget/RatingBar;

    if-eqz v1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mCredStatus:Landroid/widget/RatingBar;

    if-eqz v2, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbParamStatus:Landroid/widget/RatingBar;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3
.end method

.method private static whichField(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown view id %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800a6
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    and-int/lit8 v0, v3, 0xf

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    and-int/lit16 v1, v3, 0xf0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->handleMenuViewDetails(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->handleMenuRefreshItem(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->handleMenuClearItem(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0800a9

    const v4, 0x7f0800a8

    const v3, 0x7f0800a7

    const v2, 0x7f0800a6

    const/4 v1, 0x0

    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->setContentView(I)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mProvStatus:Landroid/widget/RatingBar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mProvStatus:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mCredStatus:Landroid/widget/RatingBar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mCredStatus:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbParamStatus:Landroid/widget/RatingBar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbParamStatus:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$5;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$6;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$7;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;-><init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->whichField(Landroid/view/View;)I

    move-result v3

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v6}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v1

    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v6

    if-eqz v6, :cond_3

    move v0, v4

    :goto_0
    const/16 v6, 0x20

    if-ne v3, v6, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v6, 0x30

    if-ne v3, v6, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    const/16 v6, 0x10

    if-ne v3, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    or-int/lit8 v6, v3, 0x1

    const v7, 0x7f0900c6

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    or-int/lit8 v6, v3, 0x2

    const v7, 0x7f0900c8

    invoke-interface {p1, v5, v6, v4, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    or-int/lit8 v4, v3, 0x3

    const/4 v6, 0x2

    const v7, 0x7f0900c9

    invoke-interface {p1, v5, v4, v6, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->refreshAllInfo()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080260
        :pswitch_0
    .end packed-switch
.end method
