.class public Lcom/google/android/finsky/utils/ParcelableProto;
.super Ljava/lang/Object;
.source "ParcelableProto.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/utils/ParcelableProto",
            "<",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mPayload:Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSerialized:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/ParcelableProto$1;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/ParcelableProto$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/ParcelableProto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    iput-object p1, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/nano/MessageNano;

    return-void
.end method

.method public static forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Lcom/google/android/finsky/utils/ParcelableProto",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/ParcelableProto;-><init>(Lcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method

.method public static getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .param p0    # Landroid/os/Bundle;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ParcelableProto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .param p0    # Landroid/content/Intent;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ParcelableProto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProtoFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .param p0    # Landroid/os/Parcel;
    .param p1    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ParcelableProto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private serializePayload()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/utils/ParcelableProto;->serializePayload()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mSerialized:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/ParcelableProto;->mPayload:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
