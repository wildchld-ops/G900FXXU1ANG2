.class public final Lcom/google/android/finsky/protos/FilterRules$Rule;
.super Lcom/google/protobuf/nano/MessageNano;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Rule;


# instance fields
.field public availabilityProblemType:I

.field public comment:Ljava/lang/String;

.field public constArg:[I

.field public doubleArg:[D

.field public hasAvailabilityProblemType:Z

.field public hasComment:Z

.field public hasIncludeMissingValues:Z

.field public hasKey:Z

.field public hasNegate:Z

.field public hasOperator:Z

.field public hasResponseCode:Z

.field public includeMissingValues:Z

.field public key:I

.field public longArg:[J

.field public negate:Z

.field public operator:I

.field public responseCode:I

.field public stringArg:[Ljava/lang/String;

.field public stringArgHash:[J

.field public subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/FilterRules$Rule;

    sput-object v0, Lcom/google/android/finsky/protos/FilterRules$Rule;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasNegate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasIncludeMissingValues:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasComment:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/FilterRules$Rule;->clear()Lcom/google/android/finsky/protos/FilterRules$Rule;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/FilterRules$Rule;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->negate:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasNegate:Z

    iput v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->operator:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasOperator:Z

    iput v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->key:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasKey:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    sget-object v0, Lcom/google/android/finsky/protos/FilterRules$Rule;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    iput v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->responseCode:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasResponseCode:Z

    iput v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->availabilityProblemType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasAvailabilityProblemType:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->includeMissingValues:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasIncludeMissingValues:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->comment:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasComment:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 12

    const/4 v11, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v8

    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasNegate:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->negate:Z

    if-eqz v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->negate:Z

    invoke-static {v11, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v9

    add-int/2addr v8, v9

    :cond_1
    const/4 v9, 0x2

    iget v10, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->operator:I

    invoke-static {v9, v10}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->key:I

    if-ne v9, v11, :cond_2

    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasKey:Z

    if-eqz v9, :cond_3

    :cond_2
    const/4 v9, 0x3

    iget v10, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->key:I

    invoke-static {v9, v10}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v9

    add-int/2addr v8, v9

    :cond_3
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_5

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    aget-object v3, v9, v5

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v2, v9

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr v8, v2

    mul-int/lit8 v9, v1, 0x1

    add-int/2addr v8, v9

    :cond_6
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    array-length v9, v9

    if-lez v9, :cond_8

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    array-length v9, v9

    if-ge v5, v9, :cond_7

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    aget-wide v3, v9, v5

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v9

    add-int/2addr v2, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :cond_8
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    array-length v9, v9

    if-lez v9, :cond_9

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    array-length v9, v9

    mul-int/lit8 v2, v9, 0x8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :cond_9
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    array-length v9, v9

    if-lez v9, :cond_b

    const/4 v5, 0x0

    :goto_2
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    array-length v9, v9

    if-ge v5, v9, :cond_b

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    aget-object v3, v9, v5

    if-eqz v3, :cond_a

    const/4 v9, 0x7

    invoke-static {v9, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    iget v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->responseCode:I

    if-ne v9, v11, :cond_c

    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasResponseCode:Z

    if-eqz v9, :cond_d

    :cond_c
    const/16 v9, 0x8

    iget v10, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->responseCode:I

    invoke-static {v9, v10}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v9

    add-int/2addr v8, v9

    :cond_d
    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasComment:Z

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->comment:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    :cond_e
    const/16 v9, 0x9

    iget-object v10, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->comment:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    :cond_f
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    array-length v9, v9

    if-lez v9, :cond_10

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    array-length v9, v9

    mul-int/lit8 v2, v9, 0x8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :cond_10
    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    array-length v9, v9

    if-lez v9, :cond_12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    array-length v7, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_11

    aget v3, v0, v6

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_11
    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :cond_12
    iget v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->availabilityProblemType:I

    if-ne v9, v11, :cond_13

    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasAvailabilityProblemType:Z

    if-eqz v9, :cond_14

    :cond_13
    const/16 v9, 0xc

    iget v10, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->availabilityProblemType:I

    invoke-static {v9, v10}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v9

    add-int/2addr v8, v9

    :cond_14
    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasIncludeMissingValues:Z

    if-nez v9, :cond_15

    iget-boolean v9, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->includeMissingValues:Z

    if-eqz v9, :cond_16

    :cond_15
    const/16 v9, 0xd

    iget-boolean v10, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->includeMissingValues:Z

    invoke-static {v9, v10}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v9

    add-int/2addr v8, v9

    :cond_16
    iput v8, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->cachedSize:I

    return v8
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$Rule;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->negate:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasNegate:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->operator:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasOperator:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->key:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasKey:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x28

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [J

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    array-length v1, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    goto/16 :goto_0

    :sswitch_6
    const/16 v5, 0x31

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [D

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    array-length v1, v5

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    goto/16 :goto_0

    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-nez v5, :cond_b

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Rule;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    array-length v1, v5

    goto :goto_7

    :cond_c
    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Rule;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->responseCode:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasResponseCode:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->comment:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasComment:Z

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x51

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    if-nez v5, :cond_e

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [J

    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    array-length v1, v5

    goto :goto_9

    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x58

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    if-nez v5, :cond_11

    move v1, v4

    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [I

    if-eqz v1, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_12

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    array-length v1, v5

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->availabilityProblemType:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasAvailabilityProblemType:Z

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->includeMissingValues:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasIncludeMissingValues:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x51 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/FilterRules$Rule;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$Rule;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 9
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasNegate:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->negate:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->negate:Z

    invoke-virtual {p1, v8, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->operator:I

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->key:I

    if-ne v5, v8, :cond_2

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasKey:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->key:I

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArg:[Ljava/lang/String;

    aget-object v1, v5, v2

    if-eqz v1, :cond_4

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    array-length v5, v5

    if-lez v5, :cond_6

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    array-length v5, v5

    if-ge v2, v5, :cond_6

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->longArg:[J

    aget-wide v6, v6, v2

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    array-length v5, v5

    if-lez v5, :cond_7

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    array-length v5, v5

    if-ge v2, v5, :cond_7

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->doubleArg:[D

    aget-wide v6, v6, v2

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    array-length v5, v5

    if-lez v5, :cond_9

    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    array-length v5, v5

    if-ge v2, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->subrule:[Lcom/google/android/finsky/protos/FilterRules$Rule;

    aget-object v1, v5, v2

    if-eqz v1, :cond_8

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->responseCode:I

    if-ne v5, v8, :cond_a

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasResponseCode:Z

    if-eqz v5, :cond_b

    :cond_a
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->responseCode:I

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasComment:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->comment:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->comment:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    array-length v5, v5

    if-lez v5, :cond_e

    const/4 v2, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    array-length v5, v5

    if-ge v2, v5, :cond_e

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->stringArgHash:[J

    aget-wide v6, v6, v2

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    array-length v5, v5

    if-lez v5, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->constArg:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_f

    aget v1, v0, v3

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    iget v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->availabilityProblemType:I

    if-ne v5, v8, :cond_10

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasAvailabilityProblemType:Z

    if-eqz v5, :cond_11

    :cond_10
    const/16 v5, 0xc

    iget v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->availabilityProblemType:I

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->hasIncludeMissingValues:Z

    if-nez v5, :cond_12

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->includeMissingValues:Z

    if-eqz v5, :cond_13

    :cond_12
    const/16 v5, 0xd

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/FilterRules$Rule;->includeMissingValues:Z

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_13
    return-void
.end method
