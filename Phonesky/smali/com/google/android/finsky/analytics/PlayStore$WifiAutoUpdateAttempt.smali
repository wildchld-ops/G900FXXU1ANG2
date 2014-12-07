.class public final Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiAutoUpdateAttempt"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;


# instance fields
.field public autoUpdateSuccess:Z

.field public hasAutoUpdateSuccess:Z

.field public hasNumFailedAttempts:Z

.field public hasTimeSinceFirstFailMs:Z

.field public hasWifiCheckIntervalMs:Z

.field public numFailedAttempts:I

.field public timeSinceFirstFailMs:J

.field public wifiCheckIntervalMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasAutoUpdateSuccess:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasNumFailedAttempts:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasTimeSinceFirstFailMs:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasWifiCheckIntervalMs:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->clear()Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->autoUpdateSuccess:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasAutoUpdateSuccess:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasNumFailedAttempts:Z

    iput-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->timeSinceFirstFailMs:J

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasTimeSinceFirstFailMs:Z

    iput-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->wifiCheckIntervalMs:J

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasWifiCheckIntervalMs:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasAutoUpdateSuccess:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->autoUpdateSuccess:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->autoUpdateSuccess:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasNumFailedAttempts:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasTimeSinceFirstFailMs:Z

    if-nez v1, :cond_4

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->timeSinceFirstFailMs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->timeSinceFirstFailMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasWifiCheckIntervalMs:Z

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->wifiCheckIntervalMs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->wifiCheckIntervalMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;
    .locals 4
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->autoUpdateSuccess:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasAutoUpdateSuccess:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasNumFailedAttempts:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->timeSinceFirstFailMs:J

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasTimeSinceFirstFailMs:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->wifiCheckIntervalMs:J

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasWifiCheckIntervalMs:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasAutoUpdateSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->autoUpdateSuccess:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->autoUpdateSuccess:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasNumFailedAttempts:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasTimeSinceFirstFailMs:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->timeSinceFirstFailMs:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->timeSinceFirstFailMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasWifiCheckIntervalMs:Z

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->wifiCheckIntervalMs:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->wifiCheckIntervalMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    return-void
.end method
