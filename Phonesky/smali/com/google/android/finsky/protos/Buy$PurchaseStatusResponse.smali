.class public final Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseStatusResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;


# instance fields
.field public appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field public briefMessage:Ljava/lang/String;

.field public hasBriefMessage:Z

.field public hasInfoUrl:Z

.field public hasStatus:Z

.field public hasStatusMsg:Z

.field public hasStatusTitle:Z

.field public infoUrl:Ljava/lang/String;

.field public libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

.field public rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

.field public status:I

.field public statusMsg:Ljava/lang/String;

.field public statusTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    sput-object v0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->clear()Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->status:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusTitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->briefMessage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->infoUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->status:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusMsg:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusMsg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusTitle:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->briefMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->briefMessage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->infoUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->infoUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v1, :cond_9

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iput v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

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

    iput v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->status:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusMsg:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusTitle:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->briefMessage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->infoUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Library$LibraryUpdate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

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

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->status:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusMsg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusTitle:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->statusTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->briefMessage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->briefMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->infoUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->infoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->rejectedInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    return-void
.end method
