.class public Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
.super Ljava/lang/Object;
.source "PurchaseParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final appContinueUrl:Ljava/lang/String;

.field public final appTitle:Ljava/lang/String;

.field public final appVersionCode:I

.field public final docid:Lcom/google/android/finsky/protos/Common$Docid;

.field public final docidStr:Ljava/lang/String;

.field public final externalReferrer:Ljava/lang/String;

.field public final iabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field public final offerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1    # Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Common$Docid;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->offerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->externalReferrer:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appVersionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appContinueUrl:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/IabParameters;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    :goto_3
    return-void

    :cond_0
    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->externalReferrer:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appTitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appContinueUrl:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    goto :goto_3
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;I)V
    .locals 9
    .param p1    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILcom/google/android/finsky/billing/IabParameters;)V
    .locals 9
    .param p1    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/billing/IabParameters;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v4

    move-object v7, v4

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/IabParameters;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/protos/Common$Docid;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Lcom/google/android/finsky/billing/IabParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->offerType:I

    iput-object p4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->externalReferrer:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appVersionCode:I

    iput-object p6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appContinueUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->offerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->externalReferrer:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->externalReferrer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->externalReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appTitle:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appContinueUrl:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appContinueUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appContinueUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-nez v0, :cond_7

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method
