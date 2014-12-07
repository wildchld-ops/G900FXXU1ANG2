.class public Lcom/google/android/gms/internal/ci;
.super Lcom/google/android/gms/internal/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ci$v;,
        Lcom/google/android/gms/internal/ci$o;,
        Lcom/google/android/gms/internal/ci$b;,
        Lcom/google/android/gms/internal/ci$h;,
        Lcom/google/android/gms/internal/ci$d;,
        Lcom/google/android/gms/internal/ci$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/n",
        "<",
        "Lcom/google/android/gms/internal/cd;",
        ">;"
    }
.end annotation


# instance fields
.field private final lD:Ljava/lang/String;

.field private final lE:Ljava/lang/String;

.field private final lF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;",
            "Lcom/google/android/gms/internal/ci$j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ci;->lF:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci;->lD:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ci;->lE:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ci;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->lF:Ljava/util/HashMap;

    return-object v0
.end method

.method private static b(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/ci;->d(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method static synthetic c(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ci;->b(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pendingIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0
.end method


# virtual methods
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "post_init_configuration"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ci;->c(Landroid/os/Bundle;)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/internal/n;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "post_init_resolution"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/s;Lcom/google/android/gms/internal/n$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "social_client_application_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ci;->lD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real_client_package_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/ci;->lE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x31d634

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ci;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/s;->b(Lcom/google/android/gms/internal/r;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected ag(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/cd$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cd;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/n$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/n",
            "<",
            "Lcom/google/android/gms/internal/cd;",
            ">.b<*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/n;->a(Lcom/google/android/gms/internal/n$b;)V

    return-void
.end method

.method protected by()Lcom/google/android/gms/internal/cd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/n;->E()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cd;

    return-object v0
.end method

.method protected bz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/n;->D()V

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.service.START"

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "use_contactables_api"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->d(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ch;->lA:Lcom/google/android/gms/internal/ch;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ch;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ci;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cd;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    return-object v0
.end method

.method public disconnect()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/internal/ci;->lF:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->lF:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ci$j;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ci;->by()Lcom/google/android/gms/internal/cd;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/cd;->a(Lcom/google/android/gms/internal/cc;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/cj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->lF:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/internal/n;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public loadCircles(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ci;->bz()V

    new-instance v1, Lcom/google/android/gms/internal/ci$h;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ci$h;-><init>(Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ci;->by()Lcom/google/android/gms/internal/cd;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/cd;->a(Lcom/google/android/gms/internal/cc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ci$h;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/d;)V

    goto :goto_0
.end method

.method public loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ci;->bz()V

    new-instance v1, Lcom/google/android/gms/internal/ci$o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ci$o;-><init>(Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ci;->by()Lcom/google/android/gms/internal/cd;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getCircleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getQualifiedIds()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ar;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getProjection()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->isPeopleOnly()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getChangedSince()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getSearchFields()I

    move-result v11

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v11}, Lcom/google/android/gms/internal/cd;->a(Lcom/google/android/gms/internal/cc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ci$o;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/d;)V

    goto :goto_0
.end method
