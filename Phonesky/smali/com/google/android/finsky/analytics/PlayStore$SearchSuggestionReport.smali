.class public final Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchSuggestionReport"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;


# instance fields
.field public clientLatencyMs:J

.field public hasClientLatencyMs:Z

.field public hasQuery:Z

.field public hasSuggestedQuery:Z

.field public query:Ljava/lang/String;

.field public suggestedQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasQuery:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasSuggestedQuery:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasClientLatencyMs:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clear()Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;
    .locals 1
    .param p0    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->query:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasQuery:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->suggestedQuery:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasSuggestedQuery:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clientLatencyMs:J

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasClientLatencyMs:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasQuery:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->query:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasSuggestedQuery:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->suggestedQuery:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->suggestedQuery:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasClientLatencyMs:Z

    if-nez v1, :cond_4

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clientLatencyMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clientLatencyMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;
    .locals 4
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

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

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->query:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasQuery:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->suggestedQuery:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasSuggestedQuery:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clientLatencyMs:J

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasClientLatencyMs:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasQuery:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->query:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasSuggestedQuery:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->suggestedQuery:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->suggestedQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasClientLatencyMs:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clientLatencyMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clientLatencyMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    return-void
.end method
