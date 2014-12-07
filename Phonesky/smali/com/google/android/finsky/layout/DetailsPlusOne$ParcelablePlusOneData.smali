.class Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;
.super Ljava/lang/Object;
.source "DetailsPlusOne.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelablePlusOneData"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData$1;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$ParcelablePlusOneData;->mPlusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
