.class public final Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetEventData"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;


# instance fields
.field public backendId:I

.field public classId:I

.field public hasBackendId:Z

.field public hasClassId:Z

.field public hasIntentActionId:Z

.field public hasMaxHeight:Z

.field public hasMaxWidth:Z

.field public hasMinHeight:Z

.field public hasMinWidth:Z

.field public hasNumWidgets:Z

.field public intentActionId:I

.field public maxHeight:I

.field public maxWidth:I

.field public minHeight:I

.field public minWidth:I

.field public numWidgets:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasNumWidgets:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasBackendId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinWidth:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinHeight:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxWidth:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxHeight:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->clear()Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->classId:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasClassId:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->intentActionId:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasIntentActionId:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->numWidgets:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasNumWidgets:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasBackendId:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minWidth:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinWidth:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minHeight:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinHeight:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxWidth:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxWidth:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxHeight:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxHeight:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->classId:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasClassId:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->classId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->intentActionId:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasIntentActionId:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->intentActionId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasNumWidgets:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->numWidgets:I

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->numWidgets:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasBackendId:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinWidth:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minWidth:I

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minWidth:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinHeight:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minHeight:I

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minHeight:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxWidth:Z

    if-nez v1, :cond_c

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxWidth:I

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxWidth:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxHeight:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxHeight:I

    if-eqz v1, :cond_f

    :cond_e
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxHeight:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;
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

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->classId:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasClassId:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->intentActionId:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasIntentActionId:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->numWidgets:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasNumWidgets:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasBackendId:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minWidth:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinWidth:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minHeight:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinHeight:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxWidth:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxWidth:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxHeight:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxHeight:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

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

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->classId:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasClassId:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->classId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->intentActionId:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasIntentActionId:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->intentActionId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasNumWidgets:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->numWidgets:I

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->numWidgets:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasBackendId:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->backendId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinWidth:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minWidth:I

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minWidth:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMinHeight:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minHeight:I

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->minHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxWidth:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxWidth:I

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxWidth:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->hasMaxHeight:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxHeight:I

    if-eqz v0, :cond_f

    :cond_e
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    return-void
.end method
