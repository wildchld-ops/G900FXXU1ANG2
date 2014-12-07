.class public final Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOneData"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;


# instance fields
.field public circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field public circlesTotal:J

.field public hasCirclesTotal:Z

.field public hasSetByUser:Z

.field public hasTotal:Z

.field public oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

.field public setByUser:Z

.field public total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasSetByUser:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasTotal:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasCirclesTotal:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->clear()Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasSetByUser:Z

    iput-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasTotal:Z

    iput-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasCirclesTotal:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    sget-object v0, Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 8

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasSetByUser:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasTotal:Z

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasCirclesTotal:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    array-length v3, v3

    if-lez v3, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    aget-object v0, v3, v1

    if-eqz v0, :cond_6

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-lez v3, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v3, v1

    if-eqz v0, :cond_8

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iput v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasSetByUser:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasTotal:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasCirclesTotal:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v1, v5

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasSetByUser:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->setByUser:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasTotal:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->total:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->hasCirclesTotal:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlesTotal:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    array-length v2, v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->oBSOLETECirclesProfiles:[Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    aget-object v0, v2, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-lez v2, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;->circlePerson:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v2, v1

    if-eqz v0, :cond_8

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method
