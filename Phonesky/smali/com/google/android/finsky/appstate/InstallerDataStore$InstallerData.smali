.class public Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
.super Ljava/lang/Object;
.source "InstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/InstallerDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallerData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private accountForUpdate:Ljava/lang/String;

.field private accountName:Ljava/lang/String;

.field private autoAcquireTags:[Ljava/lang/String;

.field private autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

.field private continueUrl:Ljava/lang/String;

.field private deliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private deliveryDataTimestampMs:J

.field private desiredVersion:I

.field private downloadUri:Ljava/lang/String;

.field private externalReferrer:Ljava/lang/String;

.field private firstDownloadMs:J

.field private flags:I

.field private installerState:I

.field private lastNotifiedVersion:I

.field private lastUpdateTimestampMs:J

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    iput v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/appstate/InstallerDataStore$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$1;

    invoke-direct {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;IILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .param p3    # I
    .param p4    # I
    .param p5    # Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .param p6    # J
    .param p8    # I
    .param p9    # Ljava/lang/String;
    .param p10    # J
    .param p12    # Ljava/lang/String;
    .param p13    # Ljava/lang/String;
    .param p14    # Ljava/lang/String;
    .param p15    # Ljava/lang/String;
    .param p16    # I
    .param p17    # J
    .param p19    # Ljava/lang/String;
    .param p20    # [Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object v2, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput p3, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    iput p4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    iput-object p5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iput-wide p6, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    iput p8, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    iput-object p9, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    iput-object p12, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->externalReferrer:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastUpdateTimestampMs:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountForUpdate:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoAcquireTags:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->externalReferrer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # J

    iput-wide p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastUpdateTimestampMs:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountForUpdate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoAcquireTags:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # J

    iput-wide p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J
    .locals 0
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p1    # J

    iput-wide p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    return-wide p1
.end method


# virtual methods
.method public getAccountForUpdate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountForUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoAcquireTags()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoAcquireTags:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoAcquireTags:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getDeliveryDataTimestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    return-wide v0
.end method

.method public getDesiredVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    return v0
.end method

.method public getDownloadUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalReferrer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->externalReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstDownloadMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    return v0
.end method

.method public getInstallerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    return v0
.end method

.method public getLastNotifiedVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    return v0
.end method

.method public getLastUpdateTimestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastUpdateTimestampMs:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "(packageName=%s,autoUpdate=%s,desiredVersion=%d,hasDeliveryData=%b,installerState=%d,downloadUri=%s,firstDownloadMs=%d,externalReferrer=%s,continueUrl=%s,account=%s)"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->externalReferrer:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
