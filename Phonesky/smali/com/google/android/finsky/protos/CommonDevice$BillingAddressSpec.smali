.class public final Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingAddressSpec"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;


# instance fields
.field public billingAddressType:I

.field public hasBillingAddressType:Z

.field public requiredField:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    sput-object v0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->clear()Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->billingAddressType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 8

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v5

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->billingAddressType:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v6, v6

    if-lez v6, :cond_1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_1
    iput v5, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    return v5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
    .locals 6
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->billingAddressType:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType:Z

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x10

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [I

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->billingAddressType:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v4, v4

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
