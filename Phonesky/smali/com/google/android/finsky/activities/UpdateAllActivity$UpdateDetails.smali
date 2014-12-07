.class Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;
.super Ljava/lang/Object;
.source "UpdateAllActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/UpdateAllActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDetails"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoUpdateDisabled:Z

.field private largeUpdate:Z

.field private newPermissions:Z

.field private final packageName:Ljava/lang/String;

.field private final packageTitle:Ljava/lang/String;

.field private final permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reason:Ljava/lang/String;

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails$1;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->largeUpdate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->autoUpdateDisabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->reason:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p2, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->autoUpdateDisabled:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->autoUpdateDisabled:Z

    iget-boolean v0, p2, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->largeUpdate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->largeUpdate:Z

    iget-boolean v0, p2, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->newPermissions:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->versionCode:I

    iput-object p3, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->reason:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->versionCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->reason:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public done()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->largeUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->autoUpdateDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsAutoUpdateWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->autoUpdateDisabled:Z

    return v0
.end method

.method public needsLargeUpdateWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->largeUpdate:Z

    return v0
.end method

.method public needsPermissionsWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    return v0
.end method

.method public setAutoUpdateDisableWarningAccepted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->autoUpdateDisabled:Z

    return-void
.end method

.method public setLargeUpdateWarningAccepted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->largeUpdate:Z

    return-void
.end method

.method public setPermissionsWarningAccepted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->largeUpdate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->autoUpdateDisabled:Z

    if-eqz v0, :cond_3

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->newPermissions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
