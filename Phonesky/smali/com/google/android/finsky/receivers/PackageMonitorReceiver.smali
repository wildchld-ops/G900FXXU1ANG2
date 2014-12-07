.class public Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.super Ljava/lang/Object;
.source "PackageMonitorReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;,
        Lcom/google/android/finsky/receivers/PackageMonitorReceiver$RegisteredReceiver;,
        Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/utils/ParameterizedRunnable",
            "<",
            "Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/finsky/utils/ParameterizedRunnable;->run(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v10

    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v3, :cond_0

    if-eqz v11, :cond_3

    :cond_0
    const-string v12, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v8, v2, v6

    invoke-interface {v10, v8}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;

    invoke-direct {v12, p0, v4, v3}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;[Ljava/lang/String;Z)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v10, v8}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v12, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v9, 0x1

    :goto_2
    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;

    invoke-direct {v12, p0, v8, v9}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$2;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;Z)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$3;

    invoke-direct {v12, p0, v8}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$3;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->schedule(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v12, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$4;

    invoke-direct {v12, p0, v8}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$4;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_1

    :cond_7
    const-string v12, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    new-instance v12, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$5;

    invoke-direct {v12, p0, v8}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$5;-><init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->notifyListeners(Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    goto :goto_1

    :cond_8
    const-string v12, "Unhandled intent type action type: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
