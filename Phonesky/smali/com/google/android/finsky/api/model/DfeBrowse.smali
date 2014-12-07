.class public Lcom/google/android/finsky/api/model/DfeBrowse;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeBrowse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Landroid/os/Parcelable;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Browse$BrowseResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/DfeBrowse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeBrowse$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeBrowse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    invoke-interface {p1, p2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/Browse$BrowseResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    return-void
.end method


# virtual methods
.method public buildContentList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->contentsUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->contentsUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public buildPromoList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->promoUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBreadcrumbList()[Lcom/google/android/finsky/protos/Browse$BrowseLink;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->breadcrumb:[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategoryList()[Lcom/google/android/finsky/protos/Browse$BrowseLink;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->category:[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuickLinkList()[Lcom/google/android/finsky/protos/Browse$QuickLink;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->quickLink:[Lcom/google/android/finsky/protos/Browse$QuickLink;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerLogsCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->serverLogsCookie:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->serverLogsCookie:[B

    goto :goto_0
.end method

.method public hasCategories()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->category:[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPromotionalItems()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;->promoUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Browse$BrowseResponse;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->clearErrors()V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse;->onResponse(Lcom/google/android/finsky/protos/Browse$BrowseResponse;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
