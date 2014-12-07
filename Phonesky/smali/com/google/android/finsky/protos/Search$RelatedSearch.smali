.class public final Lcom/google/android/finsky/protos/Search$RelatedSearch;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedSearch"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Search$RelatedSearch;


# instance fields
.field public backendId:I

.field public current:Z

.field public docType:I

.field public hasBackendId:Z

.field public hasCurrent:Z

.field public hasDocType:Z

.field public hasHeader:Z

.field public hasSearchUrl:Z

.field public header:Ljava/lang/String;

.field public searchUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Search$RelatedSearch;

    sput-object v0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasSearchUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasHeader:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasCurrent:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Search$RelatedSearch;->clear()Lcom/google/android/finsky/protos/Search$RelatedSearch;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Search$RelatedSearch;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->searchUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasSearchUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->header:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasHeader:Z

    iput v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->backendId:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasBackendId:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->docType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasDocType:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasCurrent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasSearchUrl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->searchUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->searchUrl:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasHeader:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->header:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->header:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->backendId:I

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasBackendId:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->backendId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->docType:I

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasDocType:Z

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->docType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasCurrent:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Search$RelatedSearch;
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->searchUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasSearchUrl:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->header:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasHeader:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->backendId:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasBackendId:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->docType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasDocType:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasCurrent:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Search$RelatedSearch;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Search$RelatedSearch;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasSearchUrl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->searchUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->searchUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasHeader:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->header:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->header:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->backendId:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasBackendId:Z

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->backendId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->docType:I

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasDocType:Z

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->docType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->hasCurrent:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_9
    return-void
.end method
