.class Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;
.super Ljava/lang/Object;
.source "GPlusUtils.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;
.implements Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/GPlusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CirclesLoader"
.end annotation


# instance fields
.field private mBelongingCircleIds:[Ljava/lang/String;

.field private mCircles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private mCirclesLoaded:Z

.field private final mCurrentAccountName:Ljava/lang/String;

.field private final mGetCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

.field private final mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

.field private mPeopleLoaded:Z

.field private final mUserToLookUpGaiaObfId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/people/PeopleClient;

    const/16 v1, 0x79

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/people/PeopleClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCurrentAccountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mUserToLookUpGaiaObfId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mGetCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    return-void
.end method

.method private computeBelongingCircles()V
    .locals 8

    iget-boolean v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCirclesLoaded:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleLoaded:Z

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mBelongingCircleIds:[Ljava/lang/String;

    if-eqz v7, :cond_4

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mBelongingCircleIds:[Ljava/lang/String;

    array-length v5, v7

    :goto_1
    if-ge v3, v5, :cond_4

    iget-object v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mBelongingCircleIds:[Ljava/lang/String;

    aget-object v1, v7, v3

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_2
    if-ge v4, v6, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

    invoke-virtual {v7}, Lcom/google/android/gms/people/PeopleClient;->disconnect()V

    iget-object v7, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mGetCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-interface {v7, v2}, Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;->onCirclesLoaded(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private loadData()V
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

    iget-object v2, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCurrentAccountName:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/people/PeopleClient;->loadCircles(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    new-instance v8, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    invoke-direct {v8}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mUserToLookUpGaiaObfId:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/utils/GPlusUtils;->gaiaIdToPeopleQualifiedId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/utils/GPlusUtils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v9}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setQualifiedIds(Ljava/util/Collection;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

    iget-object v1, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCurrentAccountName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, v8}, Lcom/google/android/gms/people/PeopleClient;->loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V

    return-void
.end method


# virtual methods
.method public loadCircles()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

    invoke-virtual {v0}, Lcom/google/android/gms/people/PeopleClient;->connect()V

    return-void
.end method

.method public onCirclesLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/CircleBuffer;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
    .param p2    # Lcom/google/android/gms/people/model/CircleBuffer;

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mGetCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-interface {v3}, Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;->onCirclesLoadedFailed()V

    iget-object v3, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

    invoke-virtual {v3}, Lcom/google/android/gms/people/PeopleClient;->disconnect()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/android/gms/people/model/CircleBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/model/Circle;

    invoke-interface {v1}, Lcom/google/android/gms/people/model/Circle;->getCircleId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/android/gms/people/model/Circle;->getCircleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/common/people/data/AudienceMember;->forCircle(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCircles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/people/model/CircleBuffer;->close()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mCirclesLoaded:Z

    invoke-direct {p0}, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->computeBelongingCircles()V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->loadData()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mGetCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;->onCirclesLoadedFailed()V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public onPeopleLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/PersonBuffer;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
    .param p2    # Lcom/google/android/gms/people/model/PersonBuffer;

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mGetCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-interface {v1}, Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;->onCirclesLoadedFailed()V

    iget-object v1, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleClient:Lcom/google/android/gms/people/PeopleClient;

    invoke-virtual {v1}, Lcom/google/android/gms/people/PeopleClient;->disconnect()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/people/model/PersonBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/people/model/PersonBuffer;->get(I)Lcom/google/android/gms/people/model/Person;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/people/model/Person;->getBelongingCircleIds()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mBelongingCircleIds:[Ljava/lang/String;

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/people/model/PersonBuffer;->close()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->mPeopleLoaded:Z

    invoke-direct {p0}, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->computeBelongingCircles()V

    goto :goto_0
.end method
