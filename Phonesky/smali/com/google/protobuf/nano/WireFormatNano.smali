.class public final Lcom/google/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2, v4}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getTagFieldNumber(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method
