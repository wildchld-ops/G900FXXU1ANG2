.class public final Lcom/google/android/finsky/protos/DeviceConfigurationProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DeviceConfigurationProto.java"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DeviceConfigurationProto;


# instance fields
.field public glEsVersion:I

.field public glExtension:[Ljava/lang/String;

.field public hasFiveWayNavigation:Z

.field public hasGlEsVersion:Z

.field public hasHardKeyboard:Z

.field public hasHasFiveWayNavigation:Z

.field public hasHasHardKeyboard:Z

.field public hasKeyboard:Z

.field public hasMaxApkDownloadSizeMb:Z

.field public hasNavigation:Z

.field public hasScreenDensity:Z

.field public hasScreenHeight:Z

.field public hasScreenLayout:Z

.field public hasScreenWidth:Z

.field public hasTouchScreen:Z

.field public keyboard:I

.field public maxApkDownloadSizeMb:I

.field public nativePlatform:[Ljava/lang/String;

.field public navigation:I

.field public screenDensity:I

.field public screenHeight:I

.field public screenLayout:I

.field public screenWidth:I

.field public systemAvailableFeature:[Ljava/lang/String;

.field public systemSharedLibrary:[Ljava/lang/String;

.field public systemSupportedLocale:[Ljava/lang/String;

.field public touchScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    sput-object v0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->clear()Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DeviceConfigurationProto;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->touchScreen:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->keyboard:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasKeyboard:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->navigation:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasNavigation:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenLayout:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHardKeyboard:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasFiveWayNavigation:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenDensity:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenWidth:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenHeight:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glEsVersion:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->touchScreen:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->keyboard:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->navigation:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenLayout:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHardKeyboard:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasFiveWayNavigation:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenDensity:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x8

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glEsVersion:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_8
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenWidth:I

    if-eqz v5, :cond_a

    :cond_9
    const/16 v5, 0xc

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenWidth:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_a
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    if-nez v5, :cond_b

    iget v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenHeight:I

    if-eqz v5, :cond_c

    :cond_b
    const/16 v5, 0xd

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenHeight:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_12
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    if-nez v5, :cond_13

    iget v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb:I

    const/16 v6, 0x32

    if-eq v5, v6, :cond_14

    :cond_13
    const/16 v5, 0x11

    iget v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_14
    iput v4, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DeviceConfigurationProto;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->touchScreen:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->keyboard:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasKeyboard:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->navigation:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasNavigation:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenLayout:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHardKeyboard:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasFiveWayNavigation:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenDensity:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glEsVersion:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    goto :goto_0

    :sswitch_9
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenWidth:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenHeight:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    goto/16 :goto_0

    :sswitch_e
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    if-nez v5, :cond_b

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    const/16 v5, 0x7a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    if-nez v5, :cond_e

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_9

    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

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
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x88 -> :sswitch_10
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DeviceConfigurationProto;

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

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->touchScreen:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->keyboard:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->navigation:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenLayout:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasHardKeyboard:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasFiveWayNavigation:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenDensity:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glEsVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSharedLibrary:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemAvailableFeature:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->nativePlatform:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_4

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenWidth:I

    if-eqz v2, :cond_7

    :cond_6
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenWidth:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenHeight:I

    if-eqz v2, :cond_9

    :cond_8
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->screenHeight:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_b

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->systemSupportedLocale:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_a

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->glExtension:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_f

    :cond_e
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/android/finsky/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    return-void
.end method
