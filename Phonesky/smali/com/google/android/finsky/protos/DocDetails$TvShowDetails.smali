.class public final Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvShowDetails"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;


# instance fields
.field public broadcaster:Ljava/lang/String;

.field public endYear:I

.field public hasBroadcaster:Z

.field public hasEndYear:Z

.field public hasSeasonCount:Z

.field public hasStartYear:Z

.field public seasonCount:I

.field public startYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->clear()Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->seasonCount:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->startYear:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->endYear:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->broadcaster:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->seasonCount:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->seasonCount:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->startYear:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->startYear:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->endYear:I

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->endYear:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->broadcaster:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->broadcaster:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;
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

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->seasonCount:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->startYear:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->endYear:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->broadcaster:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->seasonCount:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->seasonCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->startYear:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->startYear:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->endYear:I

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->endYear:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->broadcaster:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;->broadcaster:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    return-void
.end method
