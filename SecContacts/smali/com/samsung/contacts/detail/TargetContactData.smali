.class public Lcom/samsung/contacts/detail/TargetContactData;
.super Ljava/lang/Object;
.source "TargetContactData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/contacts/detail/TargetContactData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mAccountNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCompany:Ljava/lang/String;

.field public mContactId:J

.field public mDataSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDepartment:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayNameAlter:Ljava/lang/String;

.field public mJobTitle:Ljava/lang/String;

.field public mJoinedCount:I

.field public mPhoneticName:Ljava/lang/String;

.field public mPhoto:[B

.field public mPhotoId:J

.field public mPhotoSize:I

.field public mPhotoUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/detail/TargetContactData$1;

    invoke-direct {v0}, Lcom/samsung/contacts/detail/TargetContactData$1;-><init>()V

    sput-object v0, Lcom/samsung/contacts/detail/TargetContactData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TargetContactData"

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mContactId:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountTypes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDataSets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TargetContactData"

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/TargetContactData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/Contact;Landroid/content/Context;)V
    .locals 8
    .param p1    # Lcom/android/contacts/model/Contact;
    .param p2    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v6, "TargetContactData"

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getAltDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayNameAlter:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhoneticName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoneticName:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mCompany:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoto:[B

    iget-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoto:[B

    array-length v6, v6

    iput v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v6

    iput v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mJoinedCount:I

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mContactId:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountTypes:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDataSets:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContact;

    invoke-virtual {v4, p2}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v5

    iget-object v1, v5, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    iget-object v2, v5, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, p2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDataSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mContactId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayNameAlter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoneticName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mCompany:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mJoinedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountTypes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDataSets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDataSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoto:[B

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoto:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaceable()Z
    .locals 3

    const-string v0, "TargetContactData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhotoSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    const v1, 0xc350

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-wide v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDisplayNameAlter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoneticName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mCompany:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mJoinedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mDataSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhotoSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/TargetContactData;->mPhoto:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
