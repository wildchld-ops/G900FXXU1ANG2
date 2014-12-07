.class public final Lcom/google/android/finsky/protos/DocumentV2$Reason;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reason"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Reason;


# instance fields
.field public descriptionHtml:Ljava/lang/String;

.field public dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

.field public hasDescriptionHtml:Z

.field public reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

.field public reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$Reason;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->hasDescriptionHtml:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$Reason;->clear()Lcom/google/android/finsky/protos/DocumentV2$Reason;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$Reason;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->hasDescriptionHtml:Z

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->hasDescriptionHtml:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Reason;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->hasDescriptionHtml:Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$Dismissal;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x3a -> :sswitch_4
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$Reason;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->hasDescriptionHtml:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->dismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    return-void
.end method
