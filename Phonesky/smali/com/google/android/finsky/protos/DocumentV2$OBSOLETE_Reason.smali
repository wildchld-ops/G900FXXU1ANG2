.class public final Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OBSOLETE_Reason"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;


# instance fields
.field public briefReason:Ljava/lang/String;

.field public hasBriefReason:Z

.field public hasOBSOLETEDetailedReason:Z

.field public hasUniqueId:Z

.field public oBSOLETEDetailedReason:Ljava/lang/String;

.field public uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasBriefReason:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasOBSOLETEDetailedReason:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasUniqueId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->clear()Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->briefReason:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasBriefReason:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->oBSOLETEDetailedReason:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasOBSOLETEDetailedReason:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->uniqueId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasUniqueId:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasBriefReason:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->briefReason:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->briefReason:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasOBSOLETEDetailedReason:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->oBSOLETEDetailedReason:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->oBSOLETEDetailedReason:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasUniqueId:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->uniqueId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;
    .locals 3
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->briefReason:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasBriefReason:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->oBSOLETEDetailedReason:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasOBSOLETEDetailedReason:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->uniqueId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasUniqueId:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasBriefReason:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->briefReason:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->briefReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasOBSOLETEDetailedReason:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->oBSOLETEDetailedReason:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->oBSOLETEDetailedReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->hasUniqueId:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->uniqueId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
