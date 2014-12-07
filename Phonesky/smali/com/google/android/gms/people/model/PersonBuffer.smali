.class public final Lcom/google/android/gms/people/model/PersonBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/people/model/Person;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/d;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/data/d;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/d;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/people/model/Person;
    .locals 3
    .param p1    # I

    new-instance v0, Lcom/google/android/gms/internal/cl;

    iget-object v1, p0, Lcom/google/android/gms/people/model/PersonBuffer;->mDataHolder:Lcom/google/android/gms/common/data/d;

    invoke-virtual {p0}, Lcom/google/android/gms/people/model/PersonBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/common/data/d;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/model/PersonBuffer;->get(I)Lcom/google/android/gms/people/model/Person;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "People:size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/people/model/PersonBuffer;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
