.class public final Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PromptForFopData"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;


# instance fields
.field public fopAdded:Z

.field public hasFop:Z

.field public hasFopAdded:Z

.field public hasHasFop:Z

.field public hasNumDialogShown:Z

.field public hasNumFopSelectorShown:Z

.field public hasNumSnooze:Z

.field public numDialogShown:I

.field public numFopSelectorShown:I

.field public numSnooze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasHasFop:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFopAdded:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumDialogShown:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumFopSelectorShown:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumSnooze:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->clear()Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFop:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasHasFop:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->fopAdded:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFopAdded:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numDialogShown:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumDialogShown:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numFopSelectorShown:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumFopSelectorShown:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numSnooze:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumSnooze:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasHasFop:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFop:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFop:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFopAdded:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->fopAdded:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->fopAdded:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumDialogShown:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numDialogShown:I

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numDialogShown:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumFopSelectorShown:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numFopSelectorShown:I

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numFopSelectorShown:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumSnooze:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numSnooze:I

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numSnooze:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFop:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasHasFop:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->fopAdded:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFopAdded:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numDialogShown:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumDialogShown:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numFopSelectorShown:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumFopSelectorShown:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numSnooze:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumSnooze:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasHasFop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFop:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFop:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasFopAdded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->fopAdded:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->fopAdded:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumDialogShown:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numDialogShown:I

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numDialogShown:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumFopSelectorShown:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numFopSelectorShown:I

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numFopSelectorShown:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->hasNumSnooze:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numSnooze:I

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;->numSnooze:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    return-void
.end method
