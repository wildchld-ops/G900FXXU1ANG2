.class public final Lcom/google/android/finsky/protos/Library$LibraryMutation;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryMutation"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Library$LibraryMutation;


# instance fields
.field public appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

.field public deleted:Z

.field public docid:Lcom/google/android/finsky/protos/Common$Docid;

.field public documentHash:J

.field public hasDeleted:Z

.field public hasDocumentHash:Z

.field public hasOfferType:Z

.field public hasValidUntilTimestampMsec:Z

.field public inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

.field public offerType:I

.field public subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

.field public validUntilTimestampMsec:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Library$LibraryMutation;

    sput-object v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDocumentHash:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDeleted:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasValidUntilTimestampMsec:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Library$LibraryMutation;->clear()Lcom/google/android/finsky/protos/Library$LibraryMutation;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Library$LibraryMutation;
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->offerType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasOfferType:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->documentHash:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDocumentHash:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDeleted:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->validUntilTimestampMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasValidUntilTimestampMsec:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->offerType:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasOfferType:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->offerType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDocumentHash:Z

    if-nez v1, :cond_3

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->documentHash:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->documentHash:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDeleted:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    if-eqz v1, :cond_9

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasValidUntilTimestampMsec:Z

    if-nez v1, :cond_a

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->validUntilTimestampMsec:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_b

    :cond_a
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->validUntilTimestampMsec:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Library$LibraryMutation;
    .locals 4
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->offerType:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasOfferType:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->documentHash:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDocumentHash:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDeleted:Z

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->validUntilTimestampMsec:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasValidUntilTimestampMsec:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Library$LibraryMutation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Library$LibraryMutation;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->offerType:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasOfferType:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->offerType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDocumentHash:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->documentHash:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->documentHash:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasDeleted:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->deleted:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->appDetails:Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->subscriptionDetails:Lcom/google/android/finsky/protos/Library$LibrarySubscriptionDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->inAppDetails:Lcom/google/android/finsky/protos/Library$LibraryInAppDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->hasValidUntilTimestampMsec:Z

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->validUntilTimestampMsec:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_b

    :cond_a
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->validUntilTimestampMsec:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_b
    return-void
.end method
