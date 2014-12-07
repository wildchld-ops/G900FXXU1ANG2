.class public Lcom/google/android/gms/people/PeopleClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;,
        Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;
    }
.end annotation


# instance fields
.field private final ln:Lcom/google/android/gms/internal/ci;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/PeopleClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;ILjava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ci;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ci;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/PeopleClient;-><init>(Lcom/google/android/gms/internal/ci;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient;->ln:Lcom/google/android/gms/internal/ci;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->ln:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ci;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->ln:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ci;->disconnect()V

    return-void
.end method

.method public loadCircles(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->ln:Lcom/google/android/gms/internal/ci;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ci;->loadCircles(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->ln:Lcom/google/android/gms/internal/ci;

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->lr:Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ci;->loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V

    return-void
.end method
