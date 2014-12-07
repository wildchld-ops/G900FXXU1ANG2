.class public Lcom/google/android/finsky/billing/IabParameters;
.super Ljava/lang/Object;
.source "IabParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/IabParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final billingApiVersion:I

.field public final developerPayload:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final packageSignatureHash:Ljava/lang/String;

.field public final packageVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/billing/IabParameters$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/IabParameters$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/IabParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    iput-object p2, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    iput-object p4, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/billing/IabParameters;

    iget v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    iget v4, v0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, v0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    if-nez v3, :cond_8

    :cond_a
    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    goto :goto_0

    :cond_c
    iget-object v3, v0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    if-nez v3, :cond_b

    :cond_d
    iget v3, p0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    iget v4, v0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
