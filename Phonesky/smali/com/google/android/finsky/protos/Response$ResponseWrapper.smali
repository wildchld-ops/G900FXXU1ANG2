.class public final Lcom/google/android/finsky/protos/Response$ResponseWrapper;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$ResponseWrapper;


# instance fields
.field public commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

.field public notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

.field public payload:Lcom/google/android/finsky/protos/Response$Payload;

.field public preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

.field public serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    sput-object v0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->clear()Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .locals 1
    .param p0    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Response$ResponseWrapper;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    sget-object v0, Lcom/google/android/finsky/protos/Response$PreFetch;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$PreFetch;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    sget-object v0, Lcom/google/android/finsky/protos/Notifications$Notification;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Notifications$Notification;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    array-length v3, v3

    if-lez v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    aget-object v0, v3, v1

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v3, v3

    if-lez v3, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    aget-object v0, v3, v1

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    iput v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$ResponseWrapper;
    .locals 6
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/Response$Payload;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Response$Payload;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/finsky/protos/Response$ServerCommands;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Response$ServerCommands;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    if-nez v5, :cond_4

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Response$PreFetch;

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    new-instance v5, Lcom/google/android/finsky/protos/Response$PreFetch;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Response$PreFetch;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    array-length v1, v5

    goto :goto_1

    :cond_5
    new-instance v5, Lcom/google/android/finsky/protos/Response$PreFetch;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Response$PreFetch;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    if-nez v5, :cond_7

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Notifications$Notification;

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    new-instance v5, Lcom/google/android/finsky/protos/Notifications$Notification;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Notifications$Notification;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v1, v5

    goto :goto_3

    :cond_8
    new-instance v5, Lcom/google/android/finsky/protos/Notifications$Notification;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Notifications$Notification;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    goto/16 :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    if-nez v5, :cond_9

    new-instance v5, Lcom/google/android/finsky/protos/Response$ServerMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Response$ServerMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$ResponseWrapper;

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

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->payload:Lcom/google/android/finsky/protos/Response$Payload;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->commands:Lcom/google/android/finsky/protos/Response$ServerCommands;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->preFetch:[Lcom/google/android/finsky/protos/Response$PreFetch;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->notification:[Lcom/google/android/finsky/protos/Notifications$Notification;

    aget-object v0, v2, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Response$ResponseWrapper;->serverMetadata:Lcom/google/android/finsky/protos/Response$ServerMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    return-void
.end method
