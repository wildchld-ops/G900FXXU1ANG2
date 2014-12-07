.class public Lcom/google/android/finsky/widget/recommendation/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final APP_IMAGE_TYPES:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/widget/recommendation/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private static final NONAPP_IMAGE_TYPES:[I


# instance fields
.field private final mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mExpirationTimeMs:J

.field private final mImage:Lcom/google/android/finsky/protos/Doc$Image;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->NONAPP_IMAGE_TYPES:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->APP_IMAGE_TYPES:[I

    new-instance v0, Lcom/google/android/finsky/widget/recommendation/Recommendation$1;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/recommendation/Recommendation$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v0, Lcom/google/android/finsky/config/G;->recommendationTtlMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v0, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/widget/recommendation/Recommendation;-><init>(Lcom/google/android/finsky/api/model/Document;J)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/finsky/api/model/Document;J)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getImage()Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-wide p2, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mExpirationTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/api/model/Document;JLcom/google/android/finsky/widget/recommendation/Recommendation$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # J
    .param p4    # Lcom/google/android/finsky/widget/recommendation/Recommendation$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/recommendation/Recommendation;-><init>(Lcom/google/android/finsky/api/model/Document;J)V

    return-void
.end method

.method private getImage()Lcom/google/android/finsky/protos/Doc$Image;
    .locals 8

    iget-object v6, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    sget-object v5, Lcom/google/android/finsky/widget/recommendation/Recommendation;->APP_IMAGE_TYPES:[I

    :goto_0
    move-object v0, v5

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget v2, v0, v1

    iget-object v6, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/protos/Doc$Image;

    :goto_2
    return-object v6

    :cond_0
    sget-object v5, Lcom/google/android/finsky/widget/recommendation/Recommendation;->NONAPP_IMAGE_TYPES:[I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    iget-object v0, p1, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBackend()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    return v0
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget v0, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v0, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget v2, v2, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    add-int v0, v1, v2

    return v0
.end method

.method public isExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mExpirationTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasNeutralDismissal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getNeutralDismissal()Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Dismissal;->url:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/google/android/finsky/widget/recommendation/Recommendation;->mExpirationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
