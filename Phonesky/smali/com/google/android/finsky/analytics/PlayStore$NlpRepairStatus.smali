.class public final Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NlpRepairStatus"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;


# instance fields
.field public enabled:I

.field public flags:I

.field public foundTestKeys:Z

.field public hasEnabled:Z

.field public hasFlags:Z

.field public hasFoundTestKeys:Z

.field public hasHoldoffAfterInstall:Z

.field public hasHoldoffUntilBoot:Z

.field public hasHoldoffUntilWipe:Z

.field public hasRepairStatus:Z

.field public hasSignatureHash:Z

.field public hasVersionCode:Z

.field public holdoffAfterInstall:Z

.field public holdoffUntilBoot:Z

.field public holdoffUntilWipe:Z

.field public repairStatus:I

.field public signatureHash:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFlags:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasVersionCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasSignatureHash:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFoundTestKeys:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilBoot:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilWipe:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffAfterInstall:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->clear()Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->flags:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFlags:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasVersionCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->signatureHash:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasSignatureHash:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFoundTestKeys:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilBoot:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilBoot:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilWipe:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilWipe:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffAfterInstall:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffAfterInstall:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->enabled:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFlags:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->flags:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->flags:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasVersionCode:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasSignatureHash:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->signatureHash:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->signatureHash:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFoundTestKeys:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilBoot:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilBoot:Z

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilBoot:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilWipe:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilWipe:Z

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilWipe:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffAfterInstall:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffAfterInstall:Z

    if-eqz v1, :cond_f

    :cond_e
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffAfterInstall:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasEnabled:Z

    if-nez v1, :cond_10

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->enabled:I

    if-eqz v1, :cond_11

    :cond_10
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->enabled:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->flags:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFlags:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasVersionCode:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->signatureHash:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasSignatureHash:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFoundTestKeys:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilBoot:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilBoot:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilWipe:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilWipe:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffAfterInstall:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffAfterInstall:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->enabled:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasEnabled:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

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

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasRepairStatus:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->repairStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFlags:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->flags:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->flags:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasVersionCode:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasSignatureHash:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->signatureHash:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->signatureHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasFoundTestKeys:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->foundTestKeys:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilBoot:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilBoot:Z

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilBoot:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffUntilWipe:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilWipe:Z

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffUntilWipe:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasHoldoffAfterInstall:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffAfterInstall:Z

    if-eqz v0, :cond_f

    :cond_e
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->holdoffAfterInstall:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->hasEnabled:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->enabled:I

    if-eqz v0, :cond_11

    :cond_10
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;->enabled:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    return-void
.end method
