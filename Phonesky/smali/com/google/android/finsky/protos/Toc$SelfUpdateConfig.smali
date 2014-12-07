.class public final Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelfUpdateConfig"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;


# instance fields
.field public hasLatestClientVersionCode:Z

.field public latestClientVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    sput-object v0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->clear()Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->latestClientVersionCode:I

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->latestClientVersionCode:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->latestClientVersionCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->latestClientVersionCode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->latestClientVersionCode:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->latestClientVersionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    return-void
.end method
