.class public final Lcom/google/android/finsky/protos/Common$RentalTerms;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RentalTerms"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$RentalTerms;


# instance fields
.field public activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

.field public dEPRECATEDActivatePeriodSeconds:I

.field public dEPRECATEDGrantPeriodSeconds:I

.field public grantEndTimeSeconds:J

.field public grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

.field public hasDEPRECATEDActivatePeriodSeconds:Z

.field public hasDEPRECATEDGrantPeriodSeconds:Z

.field public hasGrantEndTimeSeconds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Common$RentalTerms;

    sput-object v0, Lcom/google/android/finsky/protos/Common$RentalTerms;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$RentalTerms;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasGrantEndTimeSeconds:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDGrantPeriodSeconds:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDActivatePeriodSeconds:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Common$RentalTerms;->clear()Lcom/google/android/finsky/protos/Common$RentalTerms;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Common$RentalTerms;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantEndTimeSeconds:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasGrantEndTimeSeconds:Z

    iput v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDGrantPeriodSeconds:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDGrantPeriodSeconds:Z

    iput v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDActivatePeriodSeconds:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDActivatePeriodSeconds:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDGrantPeriodSeconds:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDGrantPeriodSeconds:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDGrantPeriodSeconds:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDActivatePeriodSeconds:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDActivatePeriodSeconds:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDActivatePeriodSeconds:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasGrantEndTimeSeconds:Z

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantEndTimeSeconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantEndTimeSeconds:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Common$RentalTerms;
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

    iput v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDGrantPeriodSeconds:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDGrantPeriodSeconds:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDActivatePeriodSeconds:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDActivatePeriodSeconds:Z

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Common$TimePeriod;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Common$TimePeriod;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantEndTimeSeconds:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasGrantEndTimeSeconds:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Common$RentalTerms;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Common$RentalTerms;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDGrantPeriodSeconds:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDGrantPeriodSeconds:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDGrantPeriodSeconds:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasDEPRECATEDActivatePeriodSeconds:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDActivatePeriodSeconds:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->dEPRECATEDActivatePeriodSeconds:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantPeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->activatePeriod:Lcom/google/android/finsky/protos/Common$TimePeriod;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->hasGrantEndTimeSeconds:Z

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantEndTimeSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Common$RentalTerms;->grantEndTimeSeconds:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    return-void
.end method
