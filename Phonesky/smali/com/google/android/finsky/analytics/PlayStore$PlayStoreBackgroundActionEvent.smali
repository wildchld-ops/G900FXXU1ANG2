.class public final Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayStoreBackgroundActionEvent"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;


# instance fields
.field public appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

.field public attempts:I

.field public clientLatencyMs:J

.field public document:Ljava/lang/String;

.field public errorCode:I

.field public exceptionType:Ljava/lang/String;

.field public fromSetting:I

.field public hasAttempts:Z

.field public hasClientLatencyMs:Z

.field public hasDocument:Z

.field public hasErrorCode:Z

.field public hasExceptionType:Z

.field public hasFromSetting:Z

.field public hasHost:Z

.field public hasOfferCheckoutFlowRequired:Z

.field public hasOfferType:Z

.field public hasOperationSuccess:Z

.field public hasReason:Z

.field public hasServerLatencyMs:Z

.field public hasServerLogsCookie:Z

.field public hasToSetting:Z

.field public hasType:Z

.field public host:Ljava/lang/String;

.field public nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

.field public offerCheckoutFlowRequired:Z

.field public offerType:I

.field public operationSuccess:Z

.field public reason:Ljava/lang/String;

.field public searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

.field public serverLatencyMs:J

.field public serverLogsCookie:[B

.field public sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

.field public toSetting:I

.field public type:I

.field public widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

.field public wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasExceptionType:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLogsCookie:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferType:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasFromSetting:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasToSetting:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLatencyMs:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasClientLatencyMs:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasHost:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasAttempts:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferCheckoutFlowRequired:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasExceptionType:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLogsCookie:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferType:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasFromSetting:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasToSetting:Z

    iput-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    iput-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iput-wide v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLatencyMs:J

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLatencyMs:Z

    iput-wide v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clientLatencyMs:J

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasClientLatencyMs:Z

    iput-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->host:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasHost:Z

    iput-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    iput-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->attempts:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasAttempts:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerCheckoutFlowRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferCheckoutFlowRequired:Z

    iput-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasExceptionType:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLogsCookie:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferType:Z

    if-nez v1, :cond_c

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasFromSetting:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    if-eqz v1, :cond_f

    :cond_e
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasToSetting:Z

    if-nez v1, :cond_10

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    if-eqz v1, :cond_11

    :cond_10
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    if-eqz v1, :cond_12

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    if-eqz v1, :cond_13

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLatencyMs:Z

    if-nez v1, :cond_14

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLatencyMs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_15

    :cond_14
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLatencyMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasClientLatencyMs:Z

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clientLatencyMs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_17

    :cond_16
    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clientLatencyMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    if-eqz v1, :cond_18

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    if-eqz v1, :cond_1a

    :cond_19
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasHost:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->host:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    if-eqz v1, :cond_1d

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    if-eqz v1, :cond_1e

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasAttempts:Z

    if-nez v1, :cond_1f

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->attempts:I

    if-eqz v1, :cond_20

    :cond_1f
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->attempts:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferCheckoutFlowRequired:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerCheckoutFlowRequired:Z

    if-eqz v1, :cond_22

    :cond_21
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerCheckoutFlowRequired:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    if-eqz v1, :cond_23

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasExceptionType:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLogsCookie:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferType:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasFromSetting:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasToSetting:Z

    goto :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLatencyMs:J

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLatencyMs:Z

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clientLatencyMs:J

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasClientLatencyMs:Z

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->host:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasHost:Z

    goto/16 :goto_0

    :sswitch_11
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->attempts:I

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasAttempts:Z

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerCheckoutFlowRequired:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferCheckoutFlowRequired:Z

    goto/16 :goto_0

    :sswitch_15
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xaa -> :sswitch_15
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

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

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasReason:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasErrorCode:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->errorCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasExceptionType:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->exceptionType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLogsCookie:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLogsCookie:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferType:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasFromSetting:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    if-eqz v0, :cond_f

    :cond_e
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->fromSetting:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasToSetting:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    if-eqz v0, :cond_11

    :cond_10
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->toSetting:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->sessionInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    if-eqz v0, :cond_13

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->appData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasServerLatencyMs:Z

    if-nez v0, :cond_14

    iget-wide v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLatencyMs:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_15

    :cond_14
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->serverLatencyMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasClientLatencyMs:Z

    if-nez v0, :cond_16

    iget-wide v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clientLatencyMs:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_17

    :cond_16
    const/16 v0, 0xd

    iget-wide v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->clientLatencyMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    if-eqz v0, :cond_18

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->nlpRepairStatus:Lcom/google/android/finsky/analytics/PlayStore$NlpRepairStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    if-eqz v0, :cond_1a

    :cond_19
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasHost:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->host:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->host:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    if-eqz v0, :cond_1d

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->widgetEventData:Lcom/google/android/finsky/analytics/PlayStore$WidgetEventData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    if-eqz v0, :cond_1e

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->wifiAutoUpdateAttempt:Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasAttempts:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->attempts:I

    if-eqz v0, :cond_20

    :cond_1f
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->attempts:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_20
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOfferCheckoutFlowRequired:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerCheckoutFlowRequired:Z

    if-eqz v0, :cond_22

    :cond_21
    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->offerCheckoutFlowRequired:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    if-eqz v0, :cond_23

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_23
    return-void
.end method
