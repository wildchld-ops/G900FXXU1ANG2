.class public final Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayStoreSessionData"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;


# instance fields
.field public allowUnknownSources:Z

.field public autoUpdateCleanupDialogNumTimesShown:I

.field public contentFilterLevel:I

.field public gaiaPasswordAuthOptedOut:Z

.field public globalAutoUpdateEnabled:Z

.field public globalAutoUpdateOverWifiOnly:Z

.field public hasAllowUnknownSources:Z

.field public hasAutoUpdateCleanupDialogNumTimesShown:Z

.field public hasContentFilterLevel:Z

.field public hasGaiaPasswordAuthOptedOut:Z

.field public hasGlobalAutoUpdateEnabled:Z

.field public hasGlobalAutoUpdateOverWifiOnly:Z

.field public hasNetworkSubType:Z

.field public hasNetworkType:Z

.field public hasNumAccountsOnDevice:Z

.field public hasNumAutoUpdatingInstalledApps:Z

.field public hasNumInstalledApps:Z

.field public hasNumInstalledAppsNotAutoUpdating:Z

.field public networkSubType:I

.field public networkType:I

.field public numAccountsOnDevice:I

.field public numAutoUpdatingInstalledApps:I

.field public numInstalledApps:I

.field public numInstalledAppsNotAutoUpdating:I

.field public promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateOverWifiOnly:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAutoUpdateCleanupDialogNumTimesShown:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkType:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkSubType:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAccountsOnDevice:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledApps:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAutoUpdatingInstalledApps:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledAppsNotAutoUpdating:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGaiaPasswordAuthOptedOut:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasContentFilterLevel:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAllowUnknownSources:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateOverWifiOnly:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateOverWifiOnly:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->autoUpdateCleanupDialogNumTimesShown:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAutoUpdateCleanupDialogNumTimesShown:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkType:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkType:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkSubType:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkSubType:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAccountsOnDevice:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAccountsOnDevice:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledApps:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledApps:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAutoUpdatingInstalledApps:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAutoUpdatingInstalledApps:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledAppsNotAutoUpdating:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledAppsNotAutoUpdating:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->gaiaPasswordAuthOptedOut:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGaiaPasswordAuthOptedOut:Z

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->contentFilterLevel:I

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasContentFilterLevel:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->allowUnknownSources:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAllowUnknownSources:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateEnabled:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateOverWifiOnly:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateOverWifiOnly:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateOverWifiOnly:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAutoUpdateCleanupDialogNumTimesShown:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->autoUpdateCleanupDialogNumTimesShown:I

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->autoUpdateCleanupDialogNumTimesShown:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkType:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkType:I

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkSubType:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkSubType:I

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkSubType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAccountsOnDevice:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAccountsOnDevice:I

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAccountsOnDevice:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledApps:Z

    if-nez v1, :cond_c

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledApps:I

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledApps:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAutoUpdatingInstalledApps:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAutoUpdatingInstalledApps:I

    if-eqz v1, :cond_f

    :cond_e
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAutoUpdatingInstalledApps:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledAppsNotAutoUpdating:Z

    if-nez v1, :cond_10

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledAppsNotAutoUpdating:I

    if-eqz v1, :cond_11

    :cond_10
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledAppsNotAutoUpdating:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGaiaPasswordAuthOptedOut:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->gaiaPasswordAuthOptedOut:Z

    if-eqz v1, :cond_13

    :cond_12
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->gaiaPasswordAuthOptedOut:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasContentFilterLevel:Z

    if-nez v1, :cond_14

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->contentFilterLevel:I

    if-eqz v1, :cond_15

    :cond_14
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->contentFilterLevel:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAllowUnknownSources:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->allowUnknownSources:Z

    if-eqz v1, :cond_17

    :cond_16
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->allowUnknownSources:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    if-eqz v1, :cond_18

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;
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

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateEnabled:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateEnabled:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateOverWifiOnly:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateOverWifiOnly:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->autoUpdateCleanupDialogNumTimesShown:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAutoUpdateCleanupDialogNumTimesShown:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkType:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkSubType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkSubType:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAccountsOnDevice:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAccountsOnDevice:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledApps:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledApps:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAutoUpdatingInstalledApps:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAutoUpdatingInstalledApps:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledAppsNotAutoUpdating:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledAppsNotAutoUpdating:Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->gaiaPasswordAuthOptedOut:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGaiaPasswordAuthOptedOut:Z

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->contentFilterLevel:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasContentFilterLevel:Z

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->allowUnknownSources:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAllowUnknownSources:Z

    goto :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

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
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGlobalAutoUpdateOverWifiOnly:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateOverWifiOnly:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->globalAutoUpdateOverWifiOnly:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAutoUpdateCleanupDialogNumTimesShown:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->autoUpdateCleanupDialogNumTimesShown:I

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->autoUpdateCleanupDialogNumTimesShown:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkType:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkType:I

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNetworkSubType:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkSubType:I

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->networkSubType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAccountsOnDevice:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAccountsOnDevice:I

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAccountsOnDevice:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledApps:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledApps:I

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledApps:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumAutoUpdatingInstalledApps:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAutoUpdatingInstalledApps:I

    if-eqz v0, :cond_f

    :cond_e
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numAutoUpdatingInstalledApps:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasNumInstalledAppsNotAutoUpdating:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledAppsNotAutoUpdating:I

    if-eqz v0, :cond_11

    :cond_10
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->numInstalledAppsNotAutoUpdating:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasGaiaPasswordAuthOptedOut:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->gaiaPasswordAuthOptedOut:Z

    if-eqz v0, :cond_13

    :cond_12
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->gaiaPasswordAuthOptedOut:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasContentFilterLevel:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->contentFilterLevel:I

    if-eqz v0, :cond_15

    :cond_14
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->contentFilterLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->hasAllowUnknownSources:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->allowUnknownSources:Z

    if-eqz v0, :cond_17

    :cond_16
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->allowUnknownSources:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    if-eqz v0, :cond_18

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSessionData;->promptForFopData:Lcom/google/android/finsky/analytics/PlayStore$PromptForFopData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    return-void
.end method
