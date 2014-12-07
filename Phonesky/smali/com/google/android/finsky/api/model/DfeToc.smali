.class public Lcom/google/android/finsky/api/model/DfeToc;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeToc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCorpusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/finsky/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedBackendId:I

.field private final mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/api/model/DfeToc$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeToc$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeToc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    const/4 v4, 0x3

    iput v4, p0, Lcom/google/android/finsky/api/model/DfeToc;->mSelectedBackendId:I

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v4, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    iget v5, v3, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierBillingConfig()Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$BillingConfig;->carrierBillingConfig:Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    return-object v0
.end method

.method public getCorpus(Ljava/lang/String;)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;
    .locals 5
    .param p1    # Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v4, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, v3, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getCorpusList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getHomeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconOverrideUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->iconOverrideUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecsWidgetUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTosCheckboxTextMarketingEmails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails:Ljava/lang/String;

    return-object v0
.end method

.method public getTosContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTosToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosToken:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetUrl(I)Ljava/lang/String;
    .locals 3
    .param p1    # I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->recsWidgetUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCurrentUserPreviouslyOptedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/Toc$UserSettings;->tosCheckboxMarketingEmailsOptedIn:Z

    return v0
.end method

.method public hasIconOverrideUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
