.class public final Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveExperiments"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;


# instance fields
.field private cachedSize:I

.field public clientAlteringExperiment:[Ljava/lang/String;

.field public gwsExperiment:[I

.field public otherExperiment:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    sput-object v0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_1
    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_3
    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v6, v6

    if-lez v6, :cond_5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_4

    aget v2, v0, v3

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_5
    iput v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->cachedSize:I

    return v5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v4, 0xa

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    :sswitch_2
    const/16 v4, 0x12

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    :goto_2
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x18

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [I

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    :goto_3
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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

    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
