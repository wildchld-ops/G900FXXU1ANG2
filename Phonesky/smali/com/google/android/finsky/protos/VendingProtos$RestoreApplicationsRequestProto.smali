.class public final Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreApplicationsRequestProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;


# instance fields
.field public backupAndroidId:Ljava/lang/String;

.field public deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

.field public hasBackupAndroidId:Z

.field public hasTosVersion:Z

.field public tosVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->clear()Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DeviceConfigurationProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

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

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    return-void
.end method
