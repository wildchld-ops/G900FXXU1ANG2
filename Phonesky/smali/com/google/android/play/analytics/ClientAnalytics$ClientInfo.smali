.class public final Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;


# instance fields
.field public androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

.field private cachedSize:I

.field public clientType:I

.field public desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

.field public iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    sput-object v0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType:I

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    iput v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType:I

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->desktopClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->iosClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$IosClientInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    return-void
.end method
