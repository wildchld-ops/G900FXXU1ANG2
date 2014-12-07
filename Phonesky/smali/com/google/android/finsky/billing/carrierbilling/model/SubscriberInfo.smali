.class public Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
.super Ljava/lang/Object;
.source "SubscriberInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress1:Ljava/lang/String;

.field private final mAddress2:Ljava/lang/String;

.field private final mCity:Ljava/lang/String;

.field private final mCountry:Ljava/lang/String;

.field private final mIdentifier:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$000(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->identifier:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$100(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address1:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$200(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address2:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$300(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->city:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$400(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->state:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$500(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->postalCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$600(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->country:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$700(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    .param p2    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)V

    return-void
.end method

.method public static fromObfuscatedString(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 6
    .param p0    # Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->switchChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, ","

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v5, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscriberInfo could not be parsed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v2

    return-object v2
.end method

.method private static switchChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_8

    aget-char v1, v0, v2

    const/16 v5, 0x61

    if-lt v1, v5, :cond_0

    const/16 v5, 0x6d

    if-le v1, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x4d

    if-gt v1, v5, :cond_3

    :cond_1
    add-int/lit8 v5, v1, 0xd

    int-to-char v1, v5

    :cond_2
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v5, 0x6e

    if-lt v1, v5, :cond_4

    const/16 v5, 0x7a

    if-le v1, v5, :cond_5

    :cond_4
    const/16 v5, 0x4e

    if-lt v1, v5, :cond_6

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_6

    :cond_5
    add-int/lit8 v5, v1, -0xd

    int-to-char v1, v5

    goto :goto_1

    :cond_6
    const/16 v5, 0x30

    if-lt v1, v5, :cond_7

    const/16 v5, 0x34

    if-gt v1, v5, :cond_7

    add-int/lit8 v5, v1, 0x5

    int-to-char v1, v5

    goto :goto_1

    :cond_7
    const/16 v5, 0x35

    if-lt v1, v5, :cond_2

    const/16 v5, 0x39

    if-gt v1, v5, :cond_2

    add-int/lit8 v5, v1, -0x5

    int-to-char v1, v5

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toObfuscatedString()Ljava/lang/String;
    .locals 12

    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    if-nez v9, :cond_0

    const-string v6, ""

    :goto_0
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    if-nez v9, :cond_1

    const-string v5, ""

    :goto_1
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    if-nez v9, :cond_2

    const-string v1, ""

    :goto_2
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    if-nez v9, :cond_3

    const-string v2, ""

    :goto_3
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v3, ""

    :goto_4
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v8, ""

    :goto_5
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    if-nez v9, :cond_6

    const-string v7, ""

    :goto_6
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v4, ""

    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-static {v9}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->switchChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_2
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_4
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_5
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    :cond_6
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    :cond_7
    iget-object v9, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->toObfuscatedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
