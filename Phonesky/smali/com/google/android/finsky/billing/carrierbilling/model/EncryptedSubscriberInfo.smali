.class public Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
.super Ljava/lang/Object;
.source "EncryptedSubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$1;,
        Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    }
.end annotation


# instance fields
.field public final mCarrierKeyVersion:I

.field public final mEncryptedKey:Ljava/lang/String;

.field public final mGoogleKeyVersion:I

.field public final mInitVector:Ljava/lang/String;

.field public final mMessage:Ljava/lang/String;

.field public final mSignature:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->message:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->access$000(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mMessage:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->encryptedKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->access$100(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mEncryptedKey:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->signature:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->access$200(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mSignature:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->initVector:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->access$300(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mInitVector:Ljava/lang/String;

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->carrierKeyVersion:I
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->access$400(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mCarrierKeyVersion:I

    # getter for: Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->googleKeyVersion:I
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->access$500(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mGoogleKeyVersion:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    .param p2    # Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;)V

    return-void
.end method


# virtual methods
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
    instance-of v3, p1, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mEncryptedKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mEncryptedKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mSignature:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mSignature:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mInitVector:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mInitVector:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mCarrierKeyVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mCarrierKeyVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mGoogleKeyVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mGoogleKeyVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCarrierKeyVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mCarrierKeyVersion:I

    return v0
.end method

.method public getEncryptedKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mEncryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleKeyVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mGoogleKeyVersion:I

    return v0
.end method

.method public getInitVector()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mInitVector:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mMessage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mEncryptedKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mSignature:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mInitVector:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mCarrierKeyVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mGoogleKeyVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toProto()Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->data:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasData:Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mEncryptedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->encryptedKey:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->signature:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasSignature:Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mInitVector:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->initVector:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mGoogleKeyVersion:I

    iput v1, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->googleKeyVersion:I

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mCarrierKeyVersion:I

    iput v1, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->carrierKeyVersion:I

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EncryptedSubscriberInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  message          : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  encryptedKey     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mEncryptedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  signature        : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  initVector       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mInitVector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  carrierKeyVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mCarrierKeyVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  googleKeyVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->mGoogleKeyVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
