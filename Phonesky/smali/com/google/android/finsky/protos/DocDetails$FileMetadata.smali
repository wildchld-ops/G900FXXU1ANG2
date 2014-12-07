.class public final Lcom/google/android/finsky/protos/DocDetails$FileMetadata;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;


# instance fields
.field public fileType:I

.field public hasFileType:Z

.field public hasSize:Z

.field public hasVersionCode:Z

.field public size:J

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasSize:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->clear()Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$FileMetadata;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->fileType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasFileType:Z

    iput v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->versionCode:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasSize:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->fileType:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasFileType:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->fileType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->versionCode:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasSize:Z

    if-nez v1, :cond_4

    iget-wide v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$FileMetadata;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->fileType:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasFileType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->versionCode:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasSize:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->fileType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasFileType:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->fileType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasVersionCode:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->versionCode:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->hasSize:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    return-void
.end method
