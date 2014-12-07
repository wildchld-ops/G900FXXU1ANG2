.class public final Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayStoreDeepLinkEvent"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;


# instance fields
.field public canResolve:Z

.field public externalUrl:Ljava/lang/String;

.field public hasCanResolve:Z

.field public hasExternalUrl:Z

.field public hasMinVersion:Z

.field public hasNewEnough:Z

.field public hasPackageName:Z

.field public hasResolvedType:Z

.field public hasServerLogsCookie:Z

.field public minVersion:I

.field public newEnough:Z

.field public packageName:Ljava/lang/String;

.field public resolvedType:I

.field public serverLogsCookie:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasExternalUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasPackageName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasMinVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasNewEnough:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasCanResolve:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasServerLogsCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasExternalUrl:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasResolvedType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasPackageName:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->minVersion:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasMinVersion:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->newEnough:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasNewEnough:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->canResolve:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasCanResolve:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasServerLogsCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasExternalUrl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasResolvedType:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasPackageName:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasMinVersion:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->minVersion:I

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->minVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasNewEnough:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->newEnough:Z

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->newEnough:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasCanResolve:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->canResolve:Z

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->canResolve:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasServerLogsCookie:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->serverLogsCookie:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->serverLogsCookie:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;
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

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasExternalUrl:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasResolvedType:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->packageName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasPackageName:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->minVersion:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasMinVersion:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->newEnough:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasNewEnough:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->canResolve:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasCanResolve:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->serverLogsCookie:[B

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasServerLogsCookie:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasExternalUrl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->externalUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasResolvedType:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->resolvedType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasPackageName:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasMinVersion:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->minVersion:I

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->minVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasNewEnough:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->newEnough:Z

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->newEnough:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasCanResolve:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->canResolve:Z

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->canResolve:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->hasServerLogsCookie:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->serverLogsCookie:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;->serverLogsCookie:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_d
    return-void
.end method
