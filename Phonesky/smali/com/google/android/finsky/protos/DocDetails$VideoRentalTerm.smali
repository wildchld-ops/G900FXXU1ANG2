.class public final Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoRentalTerm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;


# instance fields
.field public hasOfferAbbreviation:Z

.field public hasOfferType:Z

.field public hasRentalHeader:Z

.field public offerAbbreviation:Ljava/lang/String;

.field public offerType:I

.field public rentalHeader:Ljava/lang/String;

.field public term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasRentalHeader:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->clear()Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerAbbreviation:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->rentalHeader:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasRentalHeader:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerType:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferType:Z

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerType:I

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerAbbreviation:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerAbbreviation:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasRentalHeader:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->rentalHeader:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->rentalHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    array-length v3, v3

    if-lez v3, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    aget-object v0, v3, v1

    if-eqz v0, :cond_6

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iput v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerType:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerAbbreviation:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->rentalHeader:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasRentalHeader:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x23

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x23 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerType:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferType:Z

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerType:I

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasOfferAbbreviation:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerAbbreviation:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerAbbreviation:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->hasRentalHeader:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->rentalHeader:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->rentalHeader:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    array-length v2, v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    aget-object v0, v2, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
