.class public final Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DebugInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timing"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;


# instance fields
.field public hasName:Z

.field public hasTimeInMs:Z

.field public name:Ljava/lang/String;

.field public timeInMs:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;

    sput-object v0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->hasName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->hasTimeInMs:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->clear()Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->name:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->hasName:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->timeInMs:D

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->hasTimeInMs:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->timeInMs:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->name:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->hasName:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->timeInMs:D

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->hasTimeInMs:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x21 -> :sswitch_2
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/finsky/protos/DebugInfoProto$DebugInfo$Timing;->timeInMs:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    return-void
.end method
