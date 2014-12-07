.class public final Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;
.super Lcom/google/protobuf/nano/MessageNano;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppFileMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;


# instance fields
.field public downloadUrl:Ljava/lang/String;

.field public fileType:I

.field public hasDownloadUrl:Z

.field public hasFileType:Z

.field public hasSize:Z

.field public hasVersionCode:Z

.field public size:J

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    sput-object v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->clear()Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->fileType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasFileType:Z

    iput v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->fileType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;
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

    iput v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->fileType:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasFileType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

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

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->fileType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
