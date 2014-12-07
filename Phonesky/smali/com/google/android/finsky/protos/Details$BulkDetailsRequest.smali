.class public final Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BulkDetailsRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;


# instance fields
.field public docid:[Ljava/lang/String;

.field public hasIncludeChildDocs:Z

.field public hasIncludeDetails:Z

.field public hasSourcePackageName:Z

.field public includeChildDocs:Z

.field public includeDetails:Z

.field public sourcePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;

    sput-object v0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeDetails:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasSourcePackageName:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->clear()Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeChildDocs:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeDetails:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeDetails:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->sourcePackageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasSourcePackageName:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_2
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeChildDocs:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    :cond_3
    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeChildDocs:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeDetails:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeDetails:Z

    if-eqz v5, :cond_6

    :cond_5
    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeDetails:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasSourcePackageName:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->sourcePackageName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->sourcePackageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_8
    iput v4, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

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
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeChildDocs:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeDetails:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeDetails:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->sourcePackageName:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasSourcePackageName:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;

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

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->docid:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeChildDocs:Z

    if-eq v2, v3, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeChildDocs:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasIncludeDetails:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeDetails:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->includeDetails:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->hasSourcePackageName:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->sourcePackageName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/Details$BulkDetailsRequest;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    return-void
.end method
