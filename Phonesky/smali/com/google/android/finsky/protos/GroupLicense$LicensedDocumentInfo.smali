.class public final Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GroupLicense.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/GroupLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LicensedDocumentInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;


# instance fields
.field public gaiaGroupId:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    sput-object v0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->clear()Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;
    .locals 1

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x8

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    :cond_0
    iput v1, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->cachedSize:I

    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;
    .locals 7
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
    const/16 v5, 0x9

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [J

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v5

    aput-wide v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

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

    iget-object v1, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;->gaiaGroupId:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
