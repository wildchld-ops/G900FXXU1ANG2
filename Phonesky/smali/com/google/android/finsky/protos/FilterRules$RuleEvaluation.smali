.class public final Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;
.super Lcom/google/protobuf/nano/MessageNano;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RuleEvaluation"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;


# instance fields
.field public actualBoolValue:[Z

.field public actualDoubleValue:[D

.field public actualLongValue:[J

.field public actualStringValue:[Ljava/lang/String;

.field public rule:Lcom/google/android/finsky/protos/FilterRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;

    sput-object v0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->clear()Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 8

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    aget-object v2, v6, v4

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v5, v1

    mul-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    array-length v6, v6

    if-lez v6, :cond_5

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    array-length v6, v6

    if-ge v4, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    aget-wide v2, v6, v4

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_5
    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    array-length v6, v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    array-length v6, v6

    mul-int/lit8 v1, v6, 0x1

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_6
    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    array-length v6, v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    array-length v6, v6

    mul-int/lit8 v1, v6, 0x8

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_7
    iput v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->cachedSize:I

    return v5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;
    .locals 7
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
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Rule;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    if-nez v5, :cond_3

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x18

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    if-nez v5, :cond_6

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [J

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    array-length v1, v5

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    goto/16 :goto_0

    :sswitch_4
    const/16 v5, 0x20

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    if-nez v5, :cond_9

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Z

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    aput-boolean v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    array-length v1, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    aput-boolean v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    goto/16 :goto_0

    :sswitch_5
    const/16 v5, 0x29

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    if-nez v5, :cond_c

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [D

    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    array-length v1, v5

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x29 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;

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

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualStringValue:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualLongValue:[J

    aget-wide v3, v3, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    array-length v2, v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualBoolValue:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    array-length v2, v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$RuleEvaluation;->actualDoubleValue:[D

    aget-wide v3, v3, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
