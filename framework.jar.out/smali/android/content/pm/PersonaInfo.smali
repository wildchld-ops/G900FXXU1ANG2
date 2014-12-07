.class public Landroid/content/pm/PersonaInfo;
.super Landroid/content/pm/UserInfo;
.source "PersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final SDP_DBUPDATE_STATE_DONE:I = 0x2

.field public static final SDP_DBUPDATE_STATE_NONE:I = 0x0

.field public static final SDP_DBUPDATE_STATE_ONGOING:I = 0x1

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field private creatorUid:I

.field public encryptedId:Ljava/lang/String;

.field public fotaUpgradeVersion:I

.field public fwversion:Ljava/lang/String;

.field private handlerApkLocation:Ljava/lang/String;

.field private handlerPackageName:Ljava/lang/String;

.field private handlerServiceName:Ljava/lang/String;

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isFsMounted:Z

.field public isKioskModeEnabled:Z

.field public isLightWeightContainer:Z

.field public isPureContainer:Z

.field public isSuperLocked:Z

.field public isUserManaged:Z

.field public lastLoggedOutTime:J

.field public mBridgeSyncing:I

.field public mPartitionUpgrading:Z

.field public mSdpUpgrading:Z

.field public oldState:I

.field parentId:I

.field public removePersona:Z

.field public resetPassword:Z

.field public resetPersonaOnReboot:Z

.field public samsungAccount:Ljava/lang/String;

.field public sdpActive:Z

.field private sdpWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/SdpProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private setupWizardApkLocation:Ljava/lang/String;

.field public state:I

.field public type:Ljava/lang/String;

.field public upgradeInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/PersonaInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mSdpUpgrading:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v3, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iput v4, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v4, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v4, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v4, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mSdpUpgrading:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput p4, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput p5, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mSdpUpgrading:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput p5, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput p6, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PersonaInfo;)V
    .locals 5
    .param p1    # Landroid/content/pm/PersonaInfo;

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mSdpUpgrading:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PersonaInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    iget v0, p1, Landroid/content/pm/PersonaInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    iget v0, p1, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iget v0, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 5
    .param p1    # Landroid/content/pm/UserInfo;

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mSdpUpgrading:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1    # Landroid/os/Parcel;

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v5, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v5, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v5, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v5, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->mSdpUpgrading:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    :goto_a
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PersonaInfo$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Landroid/content/pm/PersonaInfo$1;

    invoke-direct {p0, p1}, Landroid/content/pm/PersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return v0
.end method

.method public getHandlerApkLocation()Ljava/lang/String;
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .locals 2

    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSdpProcessInfoWL(Ljava/lang/String;)Landroid/content/pm/SdpProcessInfo;
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SdpProcessInfo;

    iget-object v4, v1, Landroid/content/pm/SdpProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v4, "PersonaInfo"

    const-string v5, "getSdpProcessInfoWL is null. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public getSdpWLProcess()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/pm/SdpProcessInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "PersonaInfo"

    const-string v3, "getSdpProcessInfoWL is null. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSdpWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/SdpProcessInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBridgeSyncing()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    return v0
.end method

.method public isGuest()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartitionUpgrading()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSdpActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    return v0
.end method

.method public isSdpWhiteListed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SdpProcessInfo;

    iget-object v4, v0, Landroid/content/pm/SdpProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/content/pm/SdpProcessInfo;->flag:I

    if-ne v4, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, v0, Landroid/content/pm/SdpProcessInfo;->processName:Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    iget-object v4, v0, Landroid/content/pm/SdpProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0
.end method

.method public isSecureFileSystem()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureStorageEnabled()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-void
.end method

.method public setAdminUid(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return-void
.end method

.method public setBridgeSyncing(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/content/pm/PersonaInfo;->mBridgeSyncing:I

    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3
    .param p1    # I

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return-void
.end method

.method public setHandlerApkLocation(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    return-void
.end method

.method public setHandlerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setHandlerServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    return-void
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setPartitionUpgrading(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->mPartitionUpgrading:Z

    return-void
.end method

.method public setSdpActive(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersonaInfo["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setSdpActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    return-void
.end method

.method public setSdpWhiteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/SdpProcessInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->sdpWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-eqz v0, :cond_a

    :goto_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_a
.end method
