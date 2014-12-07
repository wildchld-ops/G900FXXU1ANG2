.class public final Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ModifyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/ModifyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyLibraryRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;


# instance fields
.field public forAddDocid:[Ljava/lang/String;

.field public forArchiveDocid:[Ljava/lang/String;

.field public forRemovalDocid:[Ljava/lang/String;

.field public hasLibraryId:Z

.field public libraryId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;

    sput-object v0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->clear()Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_a
    iput v4, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;
    .locals 6
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;

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

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->hasLibraryId:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->libraryId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forAddDocid:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forRemovalDocid:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryRequest;->forArchiveDocid:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
