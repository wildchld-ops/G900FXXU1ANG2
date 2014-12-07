.class public Lcom/google/android/finsky/billing/CheckPromoOffersAction;
.super Ljava/lang/Object;
.source "CheckPromoOffersAction.java"


# static fields
.field private static sRunning:Z


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private mCallback:Ljava/lang/Runnable;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {p2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;

    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Lcom/google/android/finsky/activities/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkPromoOffers()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v1, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;-><init>(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)V

    new-instance v2, Lcom/google/android/finsky/billing/CheckPromoOffersAction$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/CheckPromoOffersAction$2;-><init>(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->checkPromoOffers(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->checkPromoOffers()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
