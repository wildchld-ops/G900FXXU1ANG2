.class public Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;
.super Ljava/lang/Object;
.source "DetailsBadgeContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsBadgeContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableBadgeContainerData"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData$1;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
