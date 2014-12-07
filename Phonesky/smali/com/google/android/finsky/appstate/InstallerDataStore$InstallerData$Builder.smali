.class public Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
.super Ljava/lang/Object;
.source "InstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>(Lcom/google/android/finsky/appstate/InstallerDataStore$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    return-void
.end method

.method public static buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 4
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAutoUpdate(Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDesiredVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setLastNotifiedVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryDataTimestampMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDeliveryData(Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setInstallerState(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDownloadUri(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFirstDownloadMs(J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getExternalReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setExternalReferrer(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFlags(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastUpdateTimestampMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setLastUpdateTimestampMS(J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountForUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAccountForUpdate(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoAcquireTags()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAutoAcquireTags([Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    return-object v0
.end method

.method public setAccountForUpdate(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountForUpdate:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1602(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAutoAcquireTags([Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoAcquireTags:[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1702(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setAutoUpdate(Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object p0
.end method

.method public setContinueUrl(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1402(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setDeliveryData(Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .param p2    # J

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$502(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J
    invoke-static {v0, p2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$602(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J

    return-object p0
.end method

.method public setDesiredVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I

    return-object p0
.end method

.method public setDownloadUri(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$802(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setExternalReferrer(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->externalReferrer:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1002(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFirstDownloadMs(J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J
    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$902(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J

    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I

    return-object p0
.end method

.method public setInstallerState(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$702(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I

    return-object p0
.end method

.method public setLastNotifiedVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$402(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I

    return-object p0
.end method

.method public setLastUpdateTimestampMS(J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastUpdateTimestampMs:J
    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1502(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->mInstance:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    # setter for: Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->access$1202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
