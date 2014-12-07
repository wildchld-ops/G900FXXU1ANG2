.class public final Lcom/google/android/finsky/protos/Doc$Image;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/protos/Doc$Image$Citation;,
        Lcom/google/android/finsky/protos/Doc$Image$Dimension;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Image;


# instance fields
.field public altTextLocalized:Ljava/lang/String;

.field public citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

.field public dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

.field public durationSeconds:I

.field public fillColorRgb:Ljava/lang/String;

.field public hasAltTextLocalized:Z

.field public hasDurationSeconds:Z

.field public hasFillColorRgb:Z

.field public hasImageType:Z

.field public hasImageUrl:Z

.field public hasPositionInSequence:Z

.field public hasSecureUrl:Z

.field public hasSupportsFifeUrlOptions:Z

.field public imageType:I

.field public imageUrl:Ljava/lang/String;

.field public positionInSequence:I

.field public secureUrl:Ljava/lang/String;

.field public supportsFifeUrlOptions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Doc$Image;

    sput-object v0, Lcom/google/android/finsky/protos/Doc$Image;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Image;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasPositionInSequence:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSecureUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasAltTextLocalized:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasDurationSeconds:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasFillColorRgb:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Doc$Image;->clear()Lcom/google/android/finsky/protos/Doc$Image;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Doc$Image;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageType:Z

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->positionInSequence:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasPositionInSequence:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->secureUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSecureUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->altTextLocalized:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasAltTextLocalized:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->durationSeconds:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasDurationSeconds:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasFillColorRgb:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageType:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasAltTextLocalized:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->altTextLocalized:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->altTextLocalized:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSecureUrl:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->secureUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->secureUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasPositionInSequence:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->positionInSequence:I

    if-eqz v1, :cond_8

    :cond_7
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->positionInSequence:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-eqz v1, :cond_a

    :cond_9
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasDurationSeconds:Z

    if-nez v1, :cond_c

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->durationSeconds:I

    if-eqz v1, :cond_d

    :cond_c
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->durationSeconds:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasFillColorRgb:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iput v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$Image;
    .locals 4
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageType:Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Doc$Image$Dimension;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageUrl:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->altTextLocalized:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasAltTextLocalized:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->secureUrl:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSecureUrl:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->positionInSequence:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasPositionInSequence:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/Doc$Image$Citation;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Doc$Image$Citation;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->durationSeconds:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasDurationSeconds:Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasFillColorRgb:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x13 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x40 -> :sswitch_6
        0x48 -> :sswitch_7
        0x53 -> :sswitch_8
        0x70 -> :sswitch_9
        0x7a -> :sswitch_a
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Doc$Image;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageType:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasAltTextLocalized:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->altTextLocalized:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->altTextLocalized:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSecureUrl:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->secureUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->secureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasPositionInSequence:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->positionInSequence:I

    if-eqz v0, :cond_8

    :cond_7
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->positionInSequence:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-eqz v0, :cond_a

    :cond_9
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->citation:Lcom/google/android/finsky/protos/Doc$Image$Citation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasDurationSeconds:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->durationSeconds:I

    if-eqz v0, :cond_d

    :cond_c
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->durationSeconds:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->hasFillColorRgb:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/finsky/protos/Doc$Image;->fillColorRgb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    return-void
.end method
